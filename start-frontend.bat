@echo off
REM WatchWave Frontend Startup Script for Windows

echo.
echo ╔════════════════════════════════════════╗
echo ║      WatchWave Frontend Startup        ║
echo ╚════════════════════════════════════════╝
echo.

cd frontend

REM Check if node_modules exists
if not exist "node_modules" (
    echo Installing dependencies with npm...
    call npm install
    echo Dependencies installed.
)

REM Start dev server
echo.
echo ✓ Starting Next.js development server...
echo ✓ App will be available at: http://localhost:3000
echo.
echo Press Ctrl+C to stop the server.
echo.

call npm run dev

pause
