@echo off
rmdir /s /q release
mkdir release
xcopy /y /e "snapshot\*.*" "release\*.*"
del /q release\pack.toml
del /q release\config\slightguimodifications\cts.groovy
copy pack.toml release\pack.toml
copy cts.groovy release\config\slightguimodifications\cts.groovy
cd release
packwiz refresh
timeout /t 3 /nobreak