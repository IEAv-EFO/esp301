<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="15008000">
	<Item Name="Poste de travail" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">Poste de travail/VI Serveur</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">Poste de travail/VI Serveur</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="LWESP301_Example.vi" Type="VI" URL="../LWESP301_Example.vi"/>
		<Item Name="Dépendances" Type="Dependencies">
			<Item Name="LWChooseCorrectInstrument.vi" Type="VI" URL="../LWChooseCorrectInstrument.vi"/>
			<Item Name="LWConvertArrayIntoDotNetList.vi" Type="VI" URL="../LWConvertArrayIntoDotNetList.vi"/>
			<Item Name="LWESP301_Close.vi" Type="VI" URL="../LWESP301_Close.vi"/>
			<Item Name="LWESP301_Open.vi" Type="VI" URL="../LWESP301_Open.vi"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Newport.ESP301.CommandInterface" Type="Document" URL="Newport.ESP301.CommandInterface">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Spécifications de construction" Type="Build">
			<Item Name="ESP301Example" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{B1B47DA7-5C76-474B-B92E-579ECE8FCE85}</Property>
				<Property Name="App_INI_GUID" Type="Str">{0ABC8106-87CF-475E-A8A5-B91DD4689FB2}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{A78A48A7-B620-43AA-A715-E9DC9520E6F2}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">ESP301Example</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">French</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Exe</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{A0ACFF7C-F06F-4E80-9283-A77CE0624657}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">ESP301Example.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Exe/ESP301Example.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Répertoire de support</Property>
				<Property Name="Destination[1].path" Type="Path">../Exe/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{CE9E46A5-B134-4655-B759-3156808E582A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/Poste de travail/LWESP301_Example.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Newport Corporation</Property>
				<Property Name="TgtF_fileDescription" Type="Str">ESP301Example</Property>
				<Property Name="TgtF_internalName" Type="Str">ESP301Example</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 Newport Corporation</Property>
				<Property Name="TgtF_productName" Type="Str">ESP301Example</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{633BD07B-C1B0-477E-9DC0-BFDDCEC3E520}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">ESP301Example.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
