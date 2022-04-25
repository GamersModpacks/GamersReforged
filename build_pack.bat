@echo off
rmdir /s /q release
mkdir release
xcopy /y /e "snapshot\1.16.5\*.*" "release\*.*"
del /q release\pack.toml
del /q release\packmenu\resources\assets\packmenu\lang\en_us.json
del /q release\packmenu\resources\assets\packmenu\lang\ru_ru.json
del /q release\packmenu\resources\assets\packmenu\lang\uk_ua.json
del /q release\packmenu\resources\assets\packmenu\buttons\reloadbutton.json
del /q release\packmenu\resources\assets\packmenu\textures\gui\reload.png
copy pack_info\pack.toml release\pack.toml
copy pack_info\packmenu_language.json release\packmenu\resources\assets\packmenu\lang\en_us.json
cd release
packwiz refresh
timeout /t 3 /nobreak
