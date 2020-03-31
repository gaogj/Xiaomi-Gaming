		@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges... 
goto request
) else (goto start)

:request
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params = %*:"=""
echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /b

:start
pushd %~dp0bin
echo Mi game this eighth generation DVMT pre-allocated memory set patch by wzovo
h2ouve -gv sasetup_my.txt -n SaSetup
if exist "sasetup_my.txt" (
    echo Successful reading of variable
) else (
    echo Reading variable failed!
    pause
    exit /b
)

if exist "sasetup_patched.txt" (
    echo Write patched variables
    h2ouve -sv sasetup_patched.txt -n SaSetup
    echo Done! Don't forget to reboot!
) else (
    echo Failed!
)
echo.
pause