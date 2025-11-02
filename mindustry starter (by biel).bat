@echo off
title mindustry starter
:local
if exist "mindustrystarterlocal.txt" (
	
	for /f "delims=" %%x in (mindustrystarterlocal.txt) do set local=%%x

)
timeout /t 1 /nobreak >nul
if not exist "mindustrystarterlocal.txt" (
	set /p local=the place where all mindustry versions are: 
	timeout /t 2 /nobreak >nul
)
timeout /t 1 /nobreak >nul
if not exist "%local%" (
	echo "%local%" does not exist.
	goto local
)
timeout /t 1 /nobreak >nul
if exist "%local%" echo yep, everything seems fine here
	timeout /t 1 /nobreak >nul
	start cmd /k "echo %local% > mindustrystarterlocal.txt & timeout /t 1 /nobreak >nul & exit"
)
timeout /t 1 /nobreak >nul
if exist "mindustrystarterlocal.txt" (
	
	set locall=<"mindustrystarterlocal.txt"
	goto afterlocal

)
timeout /t 1 /nobreak >nul
if exist "mindustrystarterlocal.txt" (
	echo proceed with your mindustry versions file versions at "%locall%"?
	set /p YorN=Y or N: 
)
timeout /t 1 /nobreak >nul
if exist "mindustrystarterlocal.txt" (
	echo %YorN% | findstr /C:"y" > nul
	if %errorlevel% == 0 cd %locall%
	echo %YorN% | findstr /C:"n" > nul
	if %errorlevel% == 0 start cmd /k "del mindustrystarterlocal.txt & exit"
)
timeout /t 1 /nobreak >nul
:afterlocal

cd %local%
timeout /t 1 /nobreak >nul
cls
if not exist "mindustrystarterlocal.txt" goto local
start cmd /k "echo this file keeps all the inputs you did right now! :D > inputfile.txt & exit"
:start
cls
timeout /t 1 /nobreak >nul
echo mindustry loader 1.2
timeout /t 1 /nobreak >nul
echo by crisbiel1979
timeout /t 1 /nobreak >nul
echo -----
timeout /t 1 /nobreak >nul
set /p input=Input version or end to end. 
start cmd /k "echo %input% >> inputfile.txt & exit"
timeout /t 1 /nobreak >nul
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
timeout /t 1 /nobreak >nul
start cmd /k "title mindustry 147.1's console & java -jar Mindustry147dot1.jar & pause & exit"
timeout /t 1 /nobreak >nul
echo -----
timeout /t 1 /nobreak >nul
echo Press any key to restart.
timeout /t 1 /nobreak >nul
echo -----
timeout /t 1 /nobreak >nul
pause
goto start

:152.2
start cmd /k "title mindustry 152.2's console & java -jar Mindustry152dot2.jar & pause & exit"
echo -----
echo Press any key to restart.
echo -----
pause
goto start

:153
start cmd /k "title mindustry 153's console java -jar Mindustry153.jar & pause & exit"
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
