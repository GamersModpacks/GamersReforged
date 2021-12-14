@echo off
rmdir /s /q release
mkdir release
xcopy /y /e "snapshot\*.*" "release\*.*"
del /q release\pack.toml
copy pack.toml release\pack.toml
cd release
packwiz refresh
timeout /t 3 /nobreak