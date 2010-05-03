@ECHO OFF
SET Libs=%~dp0

FOR /F %%f in ('dir "%Libs%" /ad /b') DO (
	If NOT "%%~nxf" == ".svn" (
		If EXIST "%Libs%\%%~nxf\update.bat" (
			echo updating %%~nxf...
			"%Libs%\%%~nxf\update.bat"
			)
   	)
)
