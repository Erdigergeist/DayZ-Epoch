@echo off
:start
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_lingor.exe" 2>NUL | C:\Windows\System32\find /I /N arma2oaserver_lingor.exe.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo ======================================================
echo DayZ Epoch Lingor Start/Restart Script 
echo ======================================================
echo.
echo Server monitored is not running, will be started now
echo finished.
echo Starting Lingor server...
start "arma2" /min "Expansion\beta\arma2oaserver_lingor.exe" -port=2302 "-config=instance_7_Lingor\config.cfg" "-cfg=instance_7_Lingor\basic.cfg" "-profiles=instance_7_Lingor" -name=instance_7_Lingor "-mod=@lingor;@DayZ_Epoch;@DayZ_Lingor_Epoch_Server;"
echo.
echo Starting Lingor started succesfully
echo start Chernarus kill file
start cmd /k call "@KILL_DayZEpoch_Lingor.bat"
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_lingor.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_lingor.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
:loop
cls
echo ======================================================
echo DayZ Epoch Lingor Start/Restart Script 
echo ======================================================
echo.
echo Lingor Server Port 2302 was running, running monitoring loop
echo Next check in.....
echo.
:started
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_lingor.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_lingor.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo ======================================================
echo DayZ Epoch Lingor Start/Restart Script 
echo ======================================================
echo.
echo Server monitored is not running, will be started now
echo.
echo Starting Lingor server...
start "arma2" /min "Expansion\beta\arma2oaserver_lingor.exe" -port=2302 "-config=instance_7_Lingor\config.cfg" "-cfg=instance_7_Lingor\basic.cfg" "-profiles=instance_7_Lingor" -name=instance_7_Lingor "-mod=@lingor;@DayZ_Epoch;@DayZ_Lingor_Epoch_Server;"
echo.
echo Lingor Server started succesfully
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_lingor.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_lingor.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
goto start 