@echo off
chcp 65001 >nul
rem 双击这个文件即可启动翻箱 FanBox（Windows）。无需懂命令行。
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo   还没装 Node.js。
  echo   请打开 https://nodejs.org 下载 LTS 版本装好，然后再回来双击这个文件。
  echo.
  pause
  exit /b 1
)
echo   正在启动翻箱，浏览器会自动打开…（用完关掉这个窗口即可退出）
node server.js
pause
