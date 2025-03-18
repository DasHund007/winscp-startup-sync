@echo off

:: The creator
echo Made by DasHund007. Thanks for using it! Any support is available here: https://discord.gg/ZyRe42SR4C
echo.
:: Just a quick reminder
echo Automatic WinSCP Files Syncing.
echo (It will compare files to the selected drive and download the ones that aren't locally installed.)
echo.
echo.

:: Set paths
set localFolder=C:\Users\kenan\Desktop\Trash
set serverFolder=/srv/data/Trash

:: Define SFTP command
set SFTP_COMMAND=open sftp://root:Kenan1904Vanessa.@192.168.1.209/ -hostkey="ssh-ed25519 255 hESleWVXa68XFtuGd5cGljGYn2mqf1kVZtJV5ajifpg"

:: Check if direction is not empty
if /i not "%localFolder%"=="" if /i not "%serverFolder%"=="" (
        "C:\Program Files (x86)\WinSCP\WinSCP.com" /command ^
            "%SFTP_COMMAND%" ^
            "synchronize both -mirror ""%localFolder%"" ""%serverFolder%""" ^
            "exit"
    ) else (
        echo No direction specified!
        exit /b
    )
exit /b
