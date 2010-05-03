@ECHO OFF
setlocal
SET MVCContrib="%Develop%\ASP.NET\MvcContrib"
SET DebugBuild="build\net-3.5.win32-MVCContrib-debug"

copy %MVCContrib%\%DebugBuild%\MvcContrib.dll "%~dp0"
copy %MVCContrib%\%DebugBuild%\MvcContrib.pdb "%~dp0"
copy %MVCContrib%\%DebugBuild%\MvcContrib.Castle.dll "%~dp0"
copy %MVCContrib%\%DebugBuild%\MvcContrib.Castle.pdb "%~dp0"
copy %MVCContrib%\%DebugBuild%\MvcContrib.TestHelper.dll "%~dp0"
copy %MVCContrib%\%DebugBuild%\MvcContrib.FluentHtml.dll "%~dp0"
copy %MVCContrib%\%DebugBuild%\MvcContrib.FluentHtml.pdb "%~dp0"
