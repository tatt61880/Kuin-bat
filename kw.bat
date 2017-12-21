@echo off
setlocal

if "%1"=="" goto help
if "%1"=="/?" goto help
if "%1"=="--help" goto help

set input=%1
set output=%input:.kn=.exe%
set env=wnd
set argv=-i %input% -o %output% -e %env% -q
kuincl.exe %argv%
if ERRORLEVEL 1 exit /b %ERRORLEVEL%
if "%2"=="run" %output%
goto :EOF

:help
	echo Usage: %0 file.kn
	goto :EOF
goto :EOF
