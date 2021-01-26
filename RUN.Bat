:start
:: 
:: ▒█▀▀█ ▒█▀▀▀ ░█▀▀█ ▒█▄░▒█ ▒█▀▀▀█ ▀▀█▀▀ ░█▀▀█ ▒█▀▀█ ▀▀█▀▀ 
:: ▒█▀▀▄ ▒█▀▀▀ ▒█▄▄█ ▒█▒█▒█ ░▀▀▀▄▄ ░▒█░░ ▒█▄▄█ ▒█▄▄▀ ░▒█░░ 
:: ▒█▄▄█ ▒█▄▄▄ ▒█░▒█ ▒█░░▀█ ▒█▄▄▄█ ░▒█░░ ▒█░▒█ ▒█░▒█ ░▒█░░
:: 
:: ---------------------------
:: 感謝使用          BeanStart
:: 
:: 
:: 下載: https://github.com/HappyAreaBean/BeanStart/releases
:: 變更日誌: https://github.com/HappyAreaBean/BeanStart/changelog.md
:: 
:: (c) BeanStart/HappyAreaBean
:: ---------------------------
@ECHO OFF

:: 是否切換CMD編碼至 UTF-8 (yes / no)
set 編碼UTF-8=yes

if %編碼UTF-8% == yes chcp 65001

:: 伺服名稱
set 名稱=Fantasy Realms [1.16]

:: 伺服版本
set 版本=[SkyBlock]

:: 伺服最大記憶體 (請加上大小 G/M)
set 最大記憶體=8G

:: 伺服最小記憶體 (請加上大小 G/M)
set 最小記憶體=4G

:: 伺服端
set 伺服端=yatopia-1.16.5-paperclip-b12.jar

:: Java路徑
:: 如果不指定版本請填寫 java
set Java="C:\Program Files\Java\jdk-11.0.9.1+1\bin\java.exe"

:: 關閉後自動重開 (yes / no)
set 自動重開=yes


:: -----------------------------------
:: 建議不要刪除或移動下面的所有選項!!
:: Not recommend for edit below!!
:: (c) BeanStart/HappyAreaBean
:: -----------------------------------
echo(
echo +----------------------------------------------------+
echo(
echo. %版本% %名稱%
echo(
echo.   Server jar: %伺服端%
echo.   Max ram: %最大記憶體%
echo.   Min ram: %最小記憶體%
echo(
echo +----------------------------------------------------+
echo(
echo. Server starting...
echo(
title %版本% %名稱% [%伺服端%.jar]
SET versionreplace=%伺服端:.jar=%
%Java% -Xms%最小記憶體% -Xmx%最大記憶體% -Dfile.encoding=UTF-8 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=8 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=”https://mcflags.emc.gs” -Daikars.new.flags=true -jar %versionreplace%.jar nogui
if %自動重開% == yes (
	echo(
	echo +----------------------------------------------------+
	echo  %版本% %名稱% (Autorestart)
	echo +----------------------------------------------------+
	echo(
	goto start
) ELSE (
	echo(
	echo +----------------------------------------------------+
	echo  %版本% %名稱% (Autorestart Disabled)
	echo +----------------------------------------------------+
	echo(
	pause
)