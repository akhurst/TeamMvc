@ECHO OFF
setlocal
SET Log4Net="%Develop%\Ioc\CastleProject\InversionOfControl\lib\net-3.5"

copy %Log4Net%\log4net.dll "%~dp0"
