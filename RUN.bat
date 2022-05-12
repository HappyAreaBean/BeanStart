:start
:: 
:: ▒█▀▀█ ▒█▀▀▀ ░█▀▀█ ▒█▄░▒█ ▒█▀▀▀█ ▀▀█▀▀ ░█▀▀█ ▒█▀▀█ ▀▀█▀▀ 
:: ▒█▀▀▄ ▒█▀▀▀ ▒█▄▄█ ▒█▒█▒█ ░▀▀▀▄▄ ░▒█░░ ▒█▄▄█ ▒█▄▄▀ ░▒█░░ 
:: ▒█▄▄█ ▒█▄▄▄ ▒█░▒█ ▒█░░▀█ ▒█▄▄▄█ ░▒█░░ ▒█░▒█ ▒█░▒█ ░▒█░░ v1.0
:: 
:: -----------------------------------------------
:: 感謝使用 Thank you for using           BeanStart
:: 
:: 
:: 下載 Download: https://github.com/HappyAreaBean/BeanStart/releases
:: 變更日誌 Changelog: https://github.com/HappyAreaBean/BeanStart/wiki/Changelog
:: 
:: (c) BeanStart By HappyAreaBean
:: -----------------------------------------------
@ECHO OFF

:: 是否切換CMD編碼至 UTF-8 (yes / no)
:: Switch CMD encoding to UTF-8? (yes / no)
set UTF-8=yes

if %UTF-8% == yes chcp 65001

:: 伺服名稱
:: Server Name
set Name=[Survival]

:: 伺服描述
:: Server description
set Description=My Server

:: 伺服最大記憶體 (請加上大小 G/M)
:: Maximum memory
set Maximum_Memory=8G

:: 伺服最小記憶體 (請加上大小 G/M)
:: Minimum memory
set Minimum_Memory=4G

:: 伺服端
:: Jar file name
set Jarfile=paperclip.jar

:: Java路徑
:: 如果不指定版本請填寫 java
:: Java Path
:: If you don't need to specify a version/path, please fill in java
set Java="C:\Program Files\Java\jdk-11.0.9.1+1\bin\java.exe"

:: 關閉後自動重開 (yes / no)
:: Automatically restart after closing (yes / no)
set Auto_Restart=yes


:: -------------------------------------------------------------
:: 建議不要刪除或移動下面的所有選項!!
:: Not recommended to delete or edit all the options below!
::
:: (c) BeanStart By HappyAreaBean
:: -------------------------------------------------------------
set arg1=%1
set isOverrided=no
if NOT [%arg1%] == [] (
	set Jarfile=%arg1%
	set isOverrided=yes
	echo. The jar file have been overrided to %arg1%.
)

set versionReplace=%Jarfile:.jar=%
title %Name% %Description% [%versionReplace%.jar]

echo(
echo +----------------------------------------------------+
echo(
echo. %Name% %Description%
echo(
echo.   Server jar: %Jarfile% (Overrided: %isOverrided%)
echo.   Maximum memory: %Maximum_Memory%
echo.   Minimum memory: %Minimum_Memory%
echo.   Java: %Java%
echo(
echo +----------------------------------------------------+
echo(
echo. Java Version
echo(
%Java% -version
echo(
echo +----------------------------------------------------+
echo(
echo. JVM startup command and parameters:
echo(
set startupFlag=-Xms%Minimum_Memory% -Xmx%Maximum_Memory% -Dfile.encoding=UTF-8 -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=8 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags="https://mcflags.emc.gs" -Daikars.new.flags=true -jar %versionReplace%.jar nogui
echo.%startupFlag%
echo(
echo +----------------------------------------------------+
echo(
echo. Server starting... (%Jarfile%)
echo(
echo +----------------------------------------------------+
echo(
%Java% %startupFlag%

echo(
echo +----------------------------------------------------+
echo(
if %Auto_Restart% == yes (
	echo. %Name% %Description% (Auto restarting...^)
	echo(
	echo +----------------------------------------------------+
	echo(
	goto start
) else (
	echo. %Name% %Description% (Auto restart disabled^)
	echo(
	echo +----------------------------------------------------+
	echo(
	pause
)
