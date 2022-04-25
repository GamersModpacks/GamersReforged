@echo off
cd snapshot/1.16.5
packwiz update --all
timeout /t 3 /nobreak
