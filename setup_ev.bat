@echo off
echo Configurando variables de entorno para Cordova...

REM Configurar ANDROID_HOME
set ANDROID_HOME=C:\Users\PakiDuermo\AppData\Local\Android\sdk
echo ANDROID_HOME configurado a: %ANDROID_HOME%

REM Configurar ANDROID_SDK_ROOT
set ANDROID_SDK_ROOT=C:\Users\PakiDuermo\AppData\Local\Android\sdk
echo ANDROID_SDK_ROOT configurado a: %ANDROID_SDK_ROOT%

REM Configurar Gradle
set GRADLE_HOME=C:\Users\PakiDuermo\.gradle\wrapper\dists\gradle-8.x.x\
set PATH=%PATH%;%GRADLE_HOME%\bin
echo Gradle configurado a: %GRADLE_HOME%

REM Mostrar variables configuradas
echo Variables configuradas exitosamente.
echo.
echo ANDROID_HOME: %ANDROID_HOME%
echo ANDROID_SDK_ROOT: %ANDROID_SDK_ROOT%
echo GRADLE_HOME: %GRADLE_HOME%

REM Ejecutar comandos Cordova
echo Ejecutando comandos Cordova...
cordova platform add android
cordova build android

pause
