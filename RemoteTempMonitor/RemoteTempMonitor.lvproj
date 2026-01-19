<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="25008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">25.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="varPersistentID:{23FE125C-9C7C-451F-A9C5-51BCB8DDF059}" Type="Ref">/My Computer/SharedVars.lvlib/SV_Message</Property>
	<Property Name="varPersistentID:{427C9D56-51FD-48D8-B6F6-57BCE68799DA}" Type="Ref">/My Computer/SharedVars.lvlib/SV_Temp</Property>
	<Property Name="varPersistentID:{546B5387-A279-442C-B4DD-BFC8506EBDA6}" Type="Ref">/My Computer/SharedVars.lvlib/SV_Alarm</Property>
	<Property Name="varPersistentID:{5642AF5D-3A1C-4B3F-8182-8A0DF4F6C8AF}" Type="Ref">/My Computer/SharedVars.lvlib/SV_Max</Property>
	<Property Name="varPersistentID:{7676A936-195F-40D8-9E8C-562F5D576F18}" Type="Ref">/My Computer/SharedVars.lvlib/SV_MovAvg</Property>
	<Property Name="varPersistentID:{DD7A314D-D325-46EB-882F-FA68511EB35A}" Type="Ref">/My Computer/SharedVars.lvlib/SV_Min</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Client.vi" Type="VI" URL="../Client.vi"/>
		<Item Name="FilterAndStats.vi" Type="VI" URL="../FilterAndStats.vi"/>
		<Item Name="Server.vi" Type="VI" URL="../Server.vi"/>
		<Item Name="SharedVars.lvlib" Type="Library" URL="../SharedVars.lvlib"/>
		<Item Name="SimulateTemperature.vi" Type="VI" URL="../SimulateTemperature.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
