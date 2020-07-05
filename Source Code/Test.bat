@Echo off
cls

Title SetWindowTransparency - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a
Echo.
Echo. Starting Calculator Program...
Start Calc.exe
timeout /t 3
Echo. &Echo. Modifying the Transparency...
For /l %%B in (0,1,3) do (
	For /l %%A in (100,-1,0) do (
		setwindowtransparency.exe Calculator %%A
		)
	For /l %%A in (0,1,100) do (
		setwindowtransparency.exe Calculator %%A
		)
	)
Echo.
timeout /t 3
Echo. Done!
Echo. Killing the Calculator Process...
taskkill /f /im calc.exe 2>nul >nul
taskkill /f /im calculator.exe 2>nul >nul
Echo.
pause
exit
