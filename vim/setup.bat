@echo on
REM run this as an administrator/from an elevated cmd.exe window
@echo off
pause

set MYENVSRC=%~dp0
set MYRCFILE=%ProgramFiles(x86)%\Vim\_vimrc
set VIMRT=%ProgramFiles(x86)%\Vim\vim74

copy /V %MYENVSRC%\indent\ps1.vim "%ProgramFiles(x86)%\Vim\vimfiles\indent"
copy /V %MYENVSRC%\ftplugin\ps1.vim "%ProgramFiles(x86)%\Vim\vimfiles\ftplugin"
copy /V %MYENVSRC%\syntax\ps1.vim "%ProgramFiles(x86)%\Vim\vimfiles\syntax"

copy /V %MYENVSRC%\myenv.vim "%VIMRT%"

if exist "%MYRCFILE%" (echo source $VIMRUNTIME/myenv.vim >> "%MYRCFILE%")

pause
