@echo off
:start
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_cherno.exe" 2>NUL | C:\Windows\System32\find /I /N arma2oaserver_cherno.exe.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo ======================================================
echo DayZ Epoch Cherno Start/Restart Script 
echo ======================================================
echo.
echo Server monitored is not running, will be started now
echo.
echo Starting Chernarus server...
start "arma2" /min "Expansion\beta\arma2oaserver_cherno.exe" -port=2312 "-config=instance_11_Chernarus\config.cfg" "-cfg=instance_11_Chernarus\basic.cfg" "-profiles=instance_11_Chernarus" -name=instance_11_Chernarus "-mod=@DayZ_Epoch;@DayZ_Epoch_Cherno_Server;"
echo.
echo Chernarus Server started succesfully
echo start Chernarus kill file
start cmd /k call "@KILL_DayZEpoch_Chernarus.bat"
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_cherno.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_cherno.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
:loop
cls
echo ======================================================
echo DayZ Epoch Cherno Start/Restart Script 
echo ======================================================
echo.
echo Chernarus Server Port 2312 was running, running monitoring loop
echo Next check in.....
echo.
:started
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_cherno.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_cherno.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo ======================================================
echo DayZ Epoch Cherno Start/Restart Script 
echo ======================================================
echo.
echo Server monitored is not running, will be started now
echo.
echo Starting Chernarus server...
start "arma2" /min "Expansion\beta\arma2oaserver_cherno.exe" -port=2312 "-config=instance_11_Chernarus\config.cfg" "-cfg=instance_11_Chernarus\basic.cfg" "-profiles=instance_11_Chernarus" -name=instance_11_Chernarus "-mod=@DayZ_Epoch;@DayZ_Epoch_Cherno_Server;"
echo.
echo Chernarus Server started succesfully
C:\Windows\System32\timeout /t 60 /NOBREAK
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma2oaserver_cherno.exe" 2>NUL | C:\Windows\System32\find /I /N "arma2oaserver_cherno.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
goto start 