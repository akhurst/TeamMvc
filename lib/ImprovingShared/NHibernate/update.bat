@ECHO OFF
setlocal
SET NHibernate="%Develop%\IoC\CastleProject\ActiveRecord\lib"
SET NHibernate.Linq="%NHibernate%\net-3.5"
SET NHibernate.Caches.SysCache="%Develop%\NHibernate\NHibernateContrib\src\NHibernate.Caches\SysCache\NHibernate.Caches.SysCache\bin\Debug"
SET NHibernate.Search="%NHibernate%"
SET NHibernate.Fluent="%Develop%\NHibernate\fluent-nhibernate\fluent-nhibernate\src\FluentNHibernate\bin\Debug"

copy %NHibernate%\NHibernate.dll "%~dp0"
copy %NHibernate%\Antlr3.Runtime.dll "%~dp0"
copy %NHibernate%\Iesi.Collections.dll "%~dp0"
copy %NHibernate%\NHibernate.ByteCode.Castle.dll "%~dp0"
copy %NHibernate.Linq%\NHibernate.Linq.dll "%~dp0"
copy %NHibernate.Caches.SysCache%\NHibernate.Caches.SysCache.dll "%~dp0"
copy %NHibernate.Search%\NHibernate.Search.dll "%~dp0"
rem copy %NHibernate.Fluent%\FluentNHibernate.dll "%~dp0"
