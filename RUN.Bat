:start
:: 
:: ▒█▀▀█ ▒█▀▀▀ ░█▀▀█ ▒█▄░▒█ ▒█▀▀▀█ ▀▀█▀▀ ░█▀▀█ ▒█▀▀█ ▀▀█▀▀ 
:: ▒█▀▀▄ ▒█▀▀▀ ▒█▄▄█ ▒█▒█▒█ ░▀▀▀▄▄ ░▒█░░ ▒█▄▄█ ▒█▄▄▀ ░▒█░░ 
:: ▒█▄▄█ ▒█▄▄▄ ▒█░▒█ ▒█░░▀█ ▒█▄▄▄█ ░▒█░░ ▒█░▒█ ▒█░▒█ ░▒█░░ v0.3
:: 
:: -----------------------------------------------
:: 感謝使用 Thank you for using          BeanStart
:: 
:: 
:: 下載 Download: https://github.com/HappyAreaBean/BeanStart/releases
:: 變更日誌 Changelog: https://github.com/HappyAreaBean/BeanStart/wiki/Changelog
:: 
:: BeanStart By HappyAreaBean
:: -----------------------------------------------
@ECHO OFF

:: 是否切換CMD編碼至 UTF-8 (yes / no)
:: Switch CMD encoding to UTF-8? (yes / no)
set UTF-8=yes

if %UTF-8% == yes chcp 65001

:: 伺服名稱
:: Server name
set Name=Example [1.16]

:: 伺服版本
:: Server Version
set Version=[Survival]

:: 伺服最大記憶體 (請加上大小 G/M)
:: Max memory
set Max-Memory=8G

:: 伺服最小記憶體 (請加上大小 G/M)
:: Mini memory
set Min-Memory=4G

:: 伺服端
:: Server jar file
set Jarfile=paperclip.jar

:: Java路徑
:: 如果不指定版本請填寫 java
:: Java Path
:: If you are not specify a version, please fill in java
set Java="C:\Program Files\Java\jdk-11.0.9.1+1\bin\java.exe"

:: 關閉後自動重開 (yes / no)
:: Automatically restart after closing (yes / no)
set AutoRestart=yes


:: -----------------------------------
:: 建議不要刪除或移動下面的所有選項!!
:: Not recommended to delete or edit all the options below!
::
:: BeanStart By HappyAreaBean
:: -----------------------------------
echo(
echo +----------------------------------------------------+
echo(
echo. %Version% %Name%
echo(
echo.   Server jar: %Jarfile%
echo.   Max ram: %Max-Memory%
echo.   Min ram: %Min-Memory%
echo(
echo +----------------------------------------------------+
echo(
echo. Server starting...
echo(
title %Version% %Name% [%Jarfile%.jar]
SET versionreplace=%Jarfile:.jar=%
%Java% -Xms%Min-Memory% -Xmx%Max-Memory% -Dfile.encoding=UTF-8 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=8 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=”https://mcflags.emc.gs” -Daikars.new.flags=true -jar %versionreplace%.jar nogui
if %AutoRestart% == yes (
	echo(
	echo +----------------------------------------------------+
	echo  %Version% %Name% (Autorestart)
	echo +----------------------------------------------------+
	echo(
	goto start
) ELSE (
	echo(
	echo +----------------------------------------------------+
	echo  %Version% %Name% (Autorestart Disabled)
	echo +----------------------------------------------------+
	echo(
	pause
)
