@echo off
rmdir /s /q release
mkdir release
xcopy /y /e "snapshot\*.*" "release\*.*"
del /q release\pack.toml
copy pack_info\pack.toml release\pack.toml
del /q release\packmenu\resources\assets\packmenu\lang\en_us.json
del /q release\packmenu\resources\assets\packmenu\buttons\reloadbutton.json
copy pack_info\packmenu_language.json release\packmenu\resources\assets\packmenu\lang\en_us.json
cd release
packwiz refresh
timeout /t 3 /nobreak