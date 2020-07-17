!define LANG "ENGLISH" ; Must be the lang name define by NSIS

!insertmacro LANG_STRING INSTALLER_LANGUAGE_TITLE "The installer language"
!insertmacro LANG_STRING INSTALL_LANGUAGE_MESSAGE "Please select the installer language"

!insertmacro LANG_STRING PRODUCT_NAME "PIME Input Methods"

!insertmacro LANG_STRING INST_TYPE_STD "Standard installation"
!insertmacro LANG_STRING INST_TYPE_FULL "Full installation"
!insertmacro LANG_STRING MB_REBOOT_REQUIRED "A reboot is required to complete the uninstallation。$\r$\nDo you want to reboot now? (Select $\"No$\" if you want to reboot at a later time)"
!insertmacro LANG_STRING PRODUCT_PAGE "PIME project home page"
!insertmacro LANG_STRING PRODUCT_PUBLISHER "PIME development team"

!insertmacro LANG_STRING AtLeastWinVista_MESSAGE "Sorry，this program currently only supports Windows Vista or later"
!insertmacro LANG_STRING REBOOT_QUESTION "The installation failed and could no be completed.$\r$\nA file may be in use, that prevents it from being deleted or overwritten.$\n$\nIt is recommended that you reboot the system and run the installer again.$\r$\nDo you want to reboot now? (Select $\"No$\" if you want to reboot at a later time)"
!insertmacro LANG_STRING INST_FAILED_MESSAGE "The installation failed and could no be completed.$\n$\rA file may be in use, that prevents it from being deleted or overwritten.$\n$\nIt is recommended that you reboot the system and run the installer again."
!insertmacro LANG_STRING UNINSTALL_OLD "An older version of PIME has been detected. Do you want to remove the old version and continue installing the new version?"
!insertmacro LANG_STRING DOWNLOAD_VC2015_QUESTION "This program requires the VC++ 2015 Runtime update to run. Would you like to automatically download and install it?"
!insertmacro LANG_STRING DOWNLOAD_VC2015_FAILED_MESSAGE "Failed to download VC++ 2015 Runtime (x86). Please try again later, or install it manually"
!insertmacro LANG_STRING INST_VC2015_FAILED_MESSAGE "VC++ 2015 runtime (x86) was not installed correctly. Refer to the relevant Microsoft documentation for updates."

!insertmacro LANG_STRING IEProtectedPage_TITLE "Change IE settings"
!insertmacro LANG_STRING IEProtectedPage_MESSAGE "PIME needs to change the IE settings in order to be used in IE."

!insertmacro LANG_STRING SECTION_MAIN "PIME input method platform"
!insertmacro LANG_STRING PYTHON_SECTION_GROUP "Input method modules with Python"
!insertmacro LANG_STRING PYTHON_AR_SECTION_GROUP "Arabic"
!insertmacro LANG_STRING NODE_SECTION_GROUP "Input method modules with Node"
!insertmacro LANG_STRING NODE_CHT_SECTION_GROUP "Traditional Chinese"
!insertmacro LANG_STRING NODE_CHS_SECTION_GROUP "Simplified Chinese"


!insertmacro LANG_STRING ARABIC "Arabic"
!insertmacro LANG_STRING EMOJIME "emojime"

!insertmacro LANG_STRING SecMain_DESC "Install the $(PRODUCT_NAME) main program to your computer."
!insertmacro LANG_STRING PYTHON_SECTION_GROUP_DESC "Input method modules with Python"
!insertmacro LANG_STRING PYTHON_AR_SECTION_GROUP_DESC "Arabic"
!insertmacro LANG_STRING NODE_SECTION_GROUP_DESC "Input method modules with Node"
!insertmacro LANG_STRING NODE_CHT_SECTION_GROUP_DESC "Traditional Chinese"
!insertmacro LANG_STRING arabic_DESC "Install Arabic input method module."
!insertmacro LANG_STRING emojime_DESC "Install emojime input method module."

!insertmacro LANG_STRING SET_ARABIC "Setup Arabic input method"

!insertmacro LANG_STRING UNINSTALL_PIME "Uninstall PIME"
