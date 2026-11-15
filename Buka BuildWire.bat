@echo off
rem Membuka BuildWire di browser. Tutup jendela ini untuk menghentikannya.
cd /d "%~dp0build\web"
if errorlevel 1 (
  echo Folder build\web tidak ditemukan. Jalankan: flutter build web --no-web-resources-cdn
  pause
  exit /b 1
)
start "" "http://127.0.0.1:8765/"
python -m http.server 8765 --bind 127.0.0.1
