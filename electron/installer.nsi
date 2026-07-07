!define APPNAME "GadirTV"
!define COMPANYNAME "GadirTV"
!define DESCRIPTION "IPTV Player Netflix-style"
!define VERSIONMAJOR 1
!define VERSIONMINOR 0
!define VERSIONBUILD 0
!define INSTALLSIZE 300000

RequestExecutionLevel admin
InstallDir "$PROGRAMFILES64\GadirTV"
Name "${APPNAME}"
Icon "icon.ico"
OutFile "GadirTV-Setup.exe"

Page directory
Page instfiles

Section "install"
    SetOutPath $INSTDIR
    File /r "dist\win-unpacked\*.*"
    WriteUninstaller "$INSTDIR\uninstall.exe"
    CreateDirectory "$SMPROGRAMS\GadirTV"
    CreateShortCut "$SMPROGRAMS\GadirTV\GadirTV.lnk" "$INSTDIR\GadirTV.exe" "" "$INSTDIR\GadirTV.exe" 0
    CreateShortCut "$SMPROGRAMS\GadirTV\Uninstall.lnk" "$INSTDIR\uninstall.exe" "" "$INSTDIR\uninstall.exe" 0
    CreateShortCut "$DESKTOP\GadirTV.lnk" "$INSTDIR\GadirTV.exe" "" "$INSTDIR\GadirTV.exe" 0
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "DisplayName" "GadirTV"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "UninstallString" "$\"$INSTDIR\uninstall.exe$\""
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "DisplayIcon" "$\"$INSTDIR\GadirTV.exe$\""
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "Publisher" "GadirTV"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "DisplayVersion" "${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONBUILD}"
    WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV" "EstimatedSize" ${INSTALLSIZE}
SectionEnd

Section "uninstall"
    Delete "$SMPROGRAMS\GadirTV\GadirTV.lnk"
    Delete "$SMPROGRAMS\GadirTV\Uninstall.lnk"
    RMDir "$SMPROGRAMS\GadirTV"
    Delete "$DESKTOP\GadirTV.lnk"
    RMDir /r "$INSTDIR"
    DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirTV"
SectionEnd
