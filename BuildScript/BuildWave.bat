set unity="C:\Program Files\Unity\Hub\Editor\2019.4.10\Editor\Unity.exe"
set buildTarget=Android
set projectPath=..
set executeMethod=BuildScript.WaveVRBuild

if exist "%projectPath%\Release" rmdir /s /q "%projectPath%\Release"
if exist "%projectPath%\Library" rmdir /s /q "%projectPath%\Library"

%unity% -quit -batchmode -nographics -logFile "log.txt" -buildTarget %buildTarget% -projectPath %projectPath% -executeMethod %executeMethod%
