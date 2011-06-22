@ECHO OFF

IF NOT DEFINED CASROOT GOTO ERR_CASROOT

IF NOT EXIST "%CASROOT%\win32\bin\TKernel.dll" GOTO ERR_CASCADE

SET CASLIBS=%CASROOT%\win32\bin

SET ROOT=%CASROOT%\..

SET RES_DIR=res
SET BIN_DIR=win32\bin

SET CSF_ResourcesDefaults=%RES_DIR%

SET PATH=%CASLIBS%;%QTDIR%\bin;%PATH%

GOTO END

:ERR_CASROOT
ECHO Environment variable "CASROOT" has not been defined. Abort.
EXIT

:ERR_CASCADE
ECHO Environment variable "CASROOT" defined incorrectly. Abort.
EXIT

:END
