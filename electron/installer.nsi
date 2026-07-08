!define APPNAME "GadirTV"
!define COMPANYNAME "GadirTV"
!define DESCRIPTION "IPTV Player for gadir.co (Xtream Codes)"
!define VERSIONMAJOR 1
!define VERSIONMINOR 0
!define VERSIONBUILD 0
!define INSTALLSIZE 300000

Name "${APPNAME}"
OutFile "GadirTV-Setup-1.6.exe"
Icon "icon.ico"
Unicode true
SetCompressor /SOLID lzma
BrandingText "GadirTV Installer"
InstallDir "$LOCALAPPDATA\Programs\GadirTV"
RequestExecutionLevel user

Page directory
Page instfiles
UninstPage uninstConfirm
UninstPage instfiles

Section "install"
    SetOutPath "$INSTDIR"
    File /r "dist_manual\GadirTV\*.*"

    WriteUninstaller "$INSTDIR\Uninstall.exe"

    CreateDirectory "$SMPROGRAMS\GadirTV"
    CreateShortCut "$SMPROGRAMS\GadirTV\GadirTV.lnk" "$INSTDIR\GadirTV.exe" "" "$INSTDIR\GadirTV.exe" 0
    CreateShortCut "$SMPROGRAMS\GadirTV\Desinstalar GadirTV.lnk" "$INSTDIR\Uninstall.exe"
    CreateShortCut "$DESKTOP\GadirTV.lnk" "$INSTDIR\GadirTV.exe" "" "$INSTDIR\GadirTV.exe" 0

    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "DisplayName" "GadirTV"
    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "UninstallString" "$\"$INSTDIR\Uninstall.exe$\""
    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "DisplayIcon" "$\"$INSTDIR\GadirTV.exe$\""
    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "Publisher" "GadirTV"
    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "DisplayVersion" "${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONBUILD}"
    WriteRegDWORD HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "EstimatedSize" ${INSTALLSIZE}
SectionEnd

Section "uninstall"
    Delete "$SMPROGRAMS\GadirTV\GadirTV.lnk"
    Delete "$SMPROGRAMS\GadirTV\Desinstalar GadirTV.lnk"
    RMDir "$SMPROGRAMS\GadirTV"
    Delete "$DESKTOP\GadirTV.lnk"
    RMDir /r "$INSTDIR"
    DeleteRegKey HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV"
SectionEnd
