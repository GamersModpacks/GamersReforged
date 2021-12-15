@echo off
cd snapshot
packwiz refresh
cd ..
cd release
packwiz refresh
timeout /t 3 /nobreak