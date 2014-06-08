@echo off
:start
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_tavi.exe" 2>NUL | C:\Windows\System32\find /I /N arma2oaserver_tavi.exe.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo ======================================================
echo DayZ Epoch Taviana Start/Restart Script 
echo ======================================================
echo.
echo Server monitored is not running, will be started now
echo.
echo Starting Taviana server...
start "arma2" /min "Expansion\beta\arma2oaserver_tavi.exe" -port=2312 "-config=instance_13_Tavi\config.cfg" "-cfg=instance_13_Tavi\basic.cfg" "-profiles=instance_13_Tavi" -name=instance_13_Tavi "-mod=@Taviana;@DayZ_Epoch;@DayZ_Epoch_Tavi_Server;"
echo.
echo Taviana Server started succesfully
echo start Taviana kill file
start cmd /k call "@KILL_DayZEpoch_Tavi.bat"
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_tavi.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_tavi.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
:loop
cls
echo ======================================================
echo DayZ Epoch Taviana Start/Restart Script 
echo ======================================================
echo.
echo Taviana Server Port 2312 was running, running monitoring loop
echo Next check in.....
echo.
:started
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_tavi.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_tavi.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo ======================================================
echo DayZ Epoch Taviana Start/Restart Script 
echo ======================================================
echo.
echo Server monitored is not running, will be started now
echo.
echo Starting Taviana server...
start "arma2" /min "Expansion\beta\arma2oaserver_tavi.exe" -port=2312 "-config=instance_13_Tavi\config.cfg" "-cfg=instance_13_Tavi\basic.cfg" "-profiles=instance_13_Tavi" -name=instance_13_Tavi "-mod=@Taviana;@DayZ_Epoch;@DayZ_Epoch_Tavi_Server;"
echo Taviana Server started succesfully
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_tavi.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_tavi.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
goto start 