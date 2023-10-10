@ECHO Off

PUSHD %~dp0

:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:64BIT
echo 64-bit...
setup64.exe
GOTO END

:32BIT
echo 32-bit...
setup.exe
GOTO END

:END
echo finished