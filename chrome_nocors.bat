@echo off
set CHROME_PATH="C:\Program Files\Google\Chrome\Application\chrome.exe"
set USER_DATA="C:\temp\chrome_nocors_profile"

echo Lanzando Chrome sin CORS...
start "" %CHROME_PATH% --disable-web-security --user-data-dir=%USER_DATA% --disable-site-isolation-trials
