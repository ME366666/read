@echo off
setlocal
set "HTML="
for %%f in ("%~dp0*.html") do set "HTML=%%~f"
if not defined HTML (
  echo [ERROR] No .html file found in this folder.
  pause
  exit /b 1
)

set "CHROME=C:\Program Files\Google\Chrome\Application\chrome.exe"
if exist "%CHROME%" (
  start "" "%CHROME%" --app="file:///%HTML:\=/%"
  exit /b 0
)

set "EDGE=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
if exist "%EDGE%" (
  start "" "%EDGE%" --app="file:///%HTML:\=/%"
  exit /b 0
)

echo [ERROR] Chrome or Edge not found.
pause
