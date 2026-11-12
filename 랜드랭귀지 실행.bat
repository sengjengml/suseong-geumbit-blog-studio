@echo off
chcp 65001 >nul
cd /d "%~dp0"
title 수성금빛부동산 블로그 스튜디오
if not exist node_modules (
  echo 처음 실행을 위한 필수 패키지를 설치합니다...
  call npm install
  if errorlevel 1 (
    echo 설치에 실패했습니다. 인터넷 연결을 확인해 주세요.
    pause
    exit /b 1
  )
)
echo.
echo 수성금빛부동산 블로그 스튜디오를 시작합니다.
echo 브라우저가 열리지 않으면 http://localhost:5173 을 입력하세요.
start "" powershell -NoProfile -WindowStyle Hidden -Command "Start-Sleep -Seconds 3; Start-Process 'http://localhost:5173'"
call npm run dev
pause
