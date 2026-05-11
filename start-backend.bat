@echo off
REM WatchWave Backend Startup Script for Windows

echo.
echo ╔════════════════════════════════════════╗
echo ║      WatchWave Backend Startup         ║
echo ╚════════════════════════════════════════╝
echo.

cd backend

REM Check if venv exists
if not exist "venv" (
    echo Creating Python virtual environment...
    python -m venv venv
    echo Virtual environment created.
)

REM Activate venv
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Check if requirements installed
pip show fastapi >nul 2>&1
if errorlevel 1 (
    echo Installing dependencies...
    pip install -r requirements.txt
)

REM Start server
echo.
echo ✓ Starting FastAPI + Socket.IO server...
echo ✓ Server will be available at: http://localhost:8000
echo.
echo Press Ctrl+C to stop the server.
echo.

uvicorn main:socket_app --reload

pause
