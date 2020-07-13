@echo off
set RootPath=%CD%\Uninstall.iss
setup.exe -uninst -s -f1"%RootPath%" -f2"c:\setup.log"