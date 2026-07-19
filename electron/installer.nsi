!define APPNAME "Gadir IPTV Player"
!define COMPANYNAME "Gadir IPTV"
!define DESCRIPTION "IPTV Player for gadir.co (Xtream Codes)"
!define VERSIONMAJOR 1
!define VERSIONMINOR 0
!define VERSIONBUILD 0
!define INSTALLSIZE 300000

Name "${APPNAME}"
OutFile "GadirIPTVPlayer-Setup-1.13.exe"
Icon "icon.ico"
Unicode true
SetCompressor /SOLID lzma
BrandingText "Gadir IPTV Player Installer"
InstallDir "$LOCALAPPDATA\Programs\GadirIPTVPlayer"
RequestExecutionLevel user

Page directory
Page instfiles
UninstPage uninstConfirm
UninstPage instfiles

Section "install"
    SetOutPath "$INSTDIR"
    File /r "dist_manual\GadirIPTVPlayer\*.*"

    WriteUninstaller "$INSTDIR\Uninstall.exe"

    CreateDirectory "$SMPROGRAMS\Gadir IPTV Player"
    CreateShortCut "$SMPROGRAMS\Gadir IPTV Player\Gadir IPTV Player.lnk" "$INSTDIR\GadirIPTVPlayer.exe" "" "$INSTDIR\GadirIPTVPlayer.exe" 0
    CreateShortCut "$SMPROGRAMS\Gadir IPTV Player\Desinstalar Gadir IPTV Player.lnk" "$INSTDIR\Uninstall.exe"
    CreateShortCut "$DESKTOP\Gadir IPTV Player.lnk" "$INSTDIR\GadirIPTVPlayer.exe" "" "$INSTDIR\GadirIPTVPlayer.exe" 0

    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirIPTVPlayer" "DisplayName" "Gadir IPTV Player"
    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirIPTVPlayer" "UninstallString" "$\"$INSTDIR\Uninstall.exe$\""
    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirIPTVPlayer" "DisplayIcon" "$\"$INSTDIR\GadirIPTVPlayer.exe$\""
    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirIPTVPlayer" "Publisher" "Gadir IPTV"
    WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirIPTVPlayer" "DisplayVersion" "${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONBUILD}"
    WriteRegDWORD HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirIPTVPlayer" "EstimatedSize" ${INSTALLSIZE}
SectionEnd

Section "uninstall"
    Delete "$SMPROGRAMS\Gadir IPTV Player\Gadir IPTV Player.lnk"
    Delete "$SMPROGRAMS\Gadir IPTV Player\Desinstalar Gadir IPTV Player.lnk"
    RMDir "$SMPROGRAMS\Gadir IPTV Player"
    Delete "$DESKTOP\Gadir IPTV Player.lnk"
    RMDir /r "$INSTDIR"
    DeleteRegKey HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\GadirIPTVPlayer"
SectionEnd
