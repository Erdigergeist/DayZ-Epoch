@echo off
:start
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_napf.exe" 2>NUL | C:\Windows\System32\find /I /N arma2oaserver_napf.exe.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo ======================================================
echo DayZ Epoch Napf Start/Restart Script 
echo ======================================================
echo.
echo Server monitored is not running, will be started now
echo.
echo Starting Napf server...
start "arma2" /min "Expansion\beta\arma2oaserver_napf.exe" -port=2312 "-config=instance_24_napf\config.cfg" "-cfg=instance_24_napf\basic.cfg" "-profiles=instance_24_napf" -name=instance_24_napf "-mod=@DayZ_Epoch;@DayZ_Epoch_Napf_Server;"
echo.
echo Napf Server started succesfully
echo start Napf kill file
start cmd /k call "@KILL_DayZEpoch_napf.bat"
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_napf.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_napf.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
:loop
cls
echo ======================================================
echo DayZ Epoch Napf Start/Restart Script 
echo ======================================================
echo.
echo Napf Server Port 2312 was running, running monitoring loop
echo Next check in.....
echo.
:started
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_napf.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_napf.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo ======================================================
echo DayZ Epoch Napf Start/Restart Script 
echo ======================================================
echo.
echo Server monitored is not running, will be started now
echo.
echo Starting Napf server...
start "arma2" /min "Expansion\beta\arma2oaserver_napf.exe" -port=2312 "-config=instance_24_napf\config.cfg" "-cfg=instance_24_napf\basic.cfg" "-profiles=instance_24_napf" -name=instance_24_napf "-mod=@DayZ_Epoch;@DayZ_Epoch_Napf_Server;"
echo.
echo Napf Server started succesfully
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_napf.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_napf.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
goto start 