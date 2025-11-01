@echo off
title mindustry starter public version
cd insert file where all the versions are kept in here 

start cmd /k "echo this file keeps all the inputs you did right now! :D > inputfile.txt & exit"
:start
cls
echo mindustry loader 1.1
echo by crisbiel1979
echo -----
set /p input=Input version or end to end. 
start cmd /k "echo %input% >> inputfile.txt & exit"
echo -----

echo %input% | findstr /C:"147.1" > nul
if %errorlevel% == 0 goto 147.1

echo %input% | findstr /C:"152.2" > nul
if %errorlevel% == 0 goto 152.2

echo %input% | findstr /C:"153" > nul
if %errorlevel% == 0 goto 153

echo %input% | findstr /C:"end" > nul
if %errorlevel% == 0 goto end

goto error

:147.1
start cmd /k "title mindustry 147.1's console & java -jar Mindustry147dot1.jar & exit"
echo -----
echo Press any key to restart.
echo -----
pause
goto start

:152.2
start cmd /k "title mindustry 152.2's console & java -jar Mindustry152dot2.jar & exit"
echo -----
echo Press any key to restart.
echo -----
pause
goto start

:153
start cmd /k "title mindustry 153's console java -jar Mindustry153.jar & exit"
echo -----
echo Press any key to restart.
echo -----
pause
goto start

:error
echo version "%input%" not identified. current versions:
echo 147.1
echo 152.2
echo 153
pause
goto start

:end
start cmd /k "echo goodbye, cruel world >> inputfile.txt & exit"
echo Press enter to exit and print all your inputs you did on this file on a new command prompt.
pause
start cmd /k "type inputfile.txt & pause & exit"
timeout /t 1 /nobreak >nul
start cmd /k "del inputfile.txt & exit"
exit