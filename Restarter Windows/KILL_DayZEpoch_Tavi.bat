@echo off
:start
echo ======================================================
echo DayZ Epoch Tavi Kill Script 
echo ======================================================
echo.
echo Server monitored is running and will restart in....
echo.
C:\Windows\System32\timeout /t 21600 /NOBREAK                                                                                                                                           
C:\Windows\System32\taskkill /f /im arma2oaserver_tavi.exe >nul
goto start