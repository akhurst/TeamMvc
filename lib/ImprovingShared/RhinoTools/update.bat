@ECHO OFF
setlocal
SET Rhino="%Develop%\Ayende"
SET DebugBuild="build"

copy %Rhino%\rhino-commons-fork\%DebugBuild%\Rhino.Commons.dll "%~dp0"
copy %Rhino%\rhino-commons-fork\%DebugBuild%\Rhino.Commons.pdb "%~dp0"
copy %Rhino%\rhino-commons-fork\%DebugBuild%\Rhino.Commons.Clr.dll "%~dp0"
copy %Rhino%\rhino-commons-fork\%DebugBuild%\Rhino.Commons.Clr.pdb "%~dp0"
copy %Rhino%\rhino-commons-fork\%DebugBuild%\Rhino.Commons.NHibernate.dll "%~dp0"
copy %Rhino%\rhino-commons-fork\%DebugBuild%\Rhino.Commons.NHibernate.pdb "%~dp0"
copy %Rhino%\rhino-commons-fork\%DebugBuild%\Rhino.Commons.ActiveRecord.dll "%~dp0"
copy %Rhino%\rhino-commons-fork\%DebugBuild%\Rhino.Commons.ActiveRecord.pdb "%~dp0"
copy %Rhino%\rhino-commons-fork\%DebugBuild%\Rhino.Commons.Binsor.dll "%~dp0"
copy %Rhino%\rhino-commons-fork\%DebugBuild%\Rhino.Commons.Binsor.pdb "%~dp0"

copy %Rhino%\rhino-dsl\%DebugBuild%\Rhino.DSL.dll "%~dp0"
copy %Rhino%\rhino-dsl\%DebugBuild%\Rhino.DSL.pdb "%~dp0"

copy %Rhino%\rhino-security-fork\%DebugBuild%\Rhino.Security.dll "%~dp0"
copy %Rhino%\rhino-security-fork\%DebugBuild%\Rhino.Security.pdb "%~dp0"
copy %Rhino%\rhino-security-fork\%DebugBuild%\Rhino.Security.ActiveRecord.dll "%~dp0"
copy %Rhino%\rhino-security-fork\%DebugBuild%\Rhino.Security.ActiveRecord.pdb "%~dp0"

copy %Rhino%\rhino-dht\%DebugBuild%\Rhino.DistributedHashTable.dll "%~dp0"
copy %Rhino%\rhino-dht\%DebugBuild%\Rhino.DistributedHashTable.pdb "%~dp0"
copy %Rhino%\rhino-pht\%DebugBuild%\Rhino.PersistentHashTable.dll "%~dp0"
copy %Rhino%\rhino-pht\%DebugBuild%\Rhino.PersistentHashTable.pdb "%~dp0"
copy %Rhino%\rhino-queues\%DebugBuild%\Rhino.Queues.dll "%~dp0"
copy %Rhino%\rhino-queues\%DebugBuild%\Rhino.Queues.pdb "%~dp0"

copy %Rhino%\rhino-esb-fork\%DebugBuild%\Rhino.ServiceBus.dll "%~dp0"
copy %Rhino%\rhino-esb-fork\%DebugBuild%\Rhino.ServiceBus.pdb "%~dp0"

copy %Rhino%\rhino-mocks\%DebugBuild%\Rhino.Mocks.dll "%~dp0"
copy %Rhino%\rhino-mocks\%DebugBuild%\Rhino.Mocks.pdb "%~dp0"

copy %Rhino%\rhino-testing\Rhino.Testing\bin\debug\\Rhino.Testing.dll "%~dp0"
copy %Rhino%\rhino-testing\Rhino.Testing\bin\debug\\Rhino.Testing.pdb "%~dp0"
