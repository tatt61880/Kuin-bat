@echo off
setlocal

if "%1"=="" goto help
if "%1"=="/?" goto help
if "%1"=="--help" goto help

set input=%1
set output=%input:.kn=.exe%
call kw.bat %input% && %output%
goto :EOF

:help
	echo Usage: %0 file.kn
	goto :EOF
goto :EOF
