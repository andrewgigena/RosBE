::
:: PROJECT:     RosBE - ReactOS Build Environment for Windows
:: LICENSE:     GNU General Public License v2. (see LICENSE.txt)
:: FILE:        Root/Remakex.cmd
:: PURPOSE:     Fully re-make one or several modules multithreaded.
:: COPYRIGHT:   Copyright 2011 Daniel Reimer <reimer.daniel@freenet.de>
::

@echo off
if not defined _ROSBE_DEBUG set _ROSBE_DEBUG=0
if %_ROSBE_DEBUG% == 1 (
    @echo on
)

title 'Remake %*' started: %TIMERAW%   (%ROS_ARCH%)

:WHILE
    if "%1" == "" goto :EOF
    call "%_ROSBE_BASEDIR%\Makex.cmd" %1_clean %1
    shift /1
    echo.
    GOTO :WHILE %*

title ReactOS Build Environment %_ROSBE_VERSION%
