<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Item Name="マイ コンピュータ" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">マイ コンピュータ/VIサーバ</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">マイ コンピュータ/VIサーバ</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="SubVI" Type="Folder">
			<Item Name="Typedefs" Type="Folder">
				<Item Name="NtfyLvFpga_Typedef_SMTPSetting.ctl" Type="VI" URL="../SubVI/NtfyLvFpga_Typedef_SMTPSetting.ctl"/>
			</Item>
			<Item Name="NtfyLvFpga_SUB__cutoffLine_MultiLineString.vi" Type="VI" URL="../SubVI/NtfyLvFpga_SUB__cutoffLine_MultiLineString.vi"/>
			<Item Name="NtfyLvFpga_SUB_base64_fast_decode.vi" Type="VI" URL="../SubVI/NtfyLvFpga_SUB_base64_fast_decode.vi"/>
			<Item Name="NtfyLvFpga_SUB_base64_fast_encode.vi" Type="VI" URL="../SubVI/NtfyLvFpga_SUB_base64_fast_encode.vi"/>
			<Item Name="NtfyLvFpga_SUB_InTimeRange_ProhibitTimeHour.vi" Type="VI" URL="../SubVI/NtfyLvFpga_SUB_InTimeRange_ProhibitTimeHour.vi"/>
			<Item Name="NtfyLvFpga_SUB_ReadResultFromLogfile.vi" Type="VI" URL="../SubVI/NtfyLvFpga_SUB_ReadResultFromLogfile.vi"/>
			<Item Name="NtfyLvFpga_SUB_ReadWriteConfigIni.vi" Type="VI" URL="../SubVI/NtfyLvFpga_SUB_ReadWriteConfigIni.vi"/>
			<Item Name="NtfyLvFpga_SUB_SendMail.vi" Type="VI" URL="../SubVI/NtfyLvFpga_SUB_SendMail.vi"/>
			<Item Name="NtfyLvFpga_SUB_SettingPanel.vi" Type="VI" URL="../SubVI/NtfyLvFpga_SUB_SettingPanel.vi"/>
			<Item Name="NtfyLvFpga_SUB_SmtpSendMail.vi" Type="VI" URL="../SubVI/NtfyLvFpga_SUB_SmtpSendMail.vi"/>
			<Item Name="NtfyLvFpga_SUB_ValidationSmtpConfig.vi" Type="VI" URL="../SubVI/NtfyLvFpga_SUB_ValidationSmtpConfig.vi"/>
		</Item>
		<Item Name="NotifyLvFPGACompileFinish.vi" Type="VI" URL="../NotifyLvFPGACompileFinish.vi"/>
		<Item Name="依存項目" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="LabVIEWSMTPClient.lvlib" Type="Library" URL="/&lt;vilib&gt;/smtpClient/LabVIEWSMTPClient.lvlib"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="Path To Command Line String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Path To Command Line String.vi"/>
				<Item Name="PathToUNIXPathString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/CFURL.llb/PathToUNIXPathString.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
		</Item>
		<Item Name="ビルド仕様" Type="Build">
			<Item Name="Exe" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{C799F3A4-2EB9-4FCF-8514-D58DC9E734F7}</Property>
				<Property Name="App_INI_GUID" Type="Str">{F494C201-1CA3-4E58-8E1B-53289F57E716}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{D4584883-17C5-457A-BBFA-B25E908BD17C}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Exe</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">Japanese</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/exe</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{8E5505C0-F866-4ADB-A76B-EAEC9BE5B18F}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">NotifyLvFPGACompileFinish.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/exe/NI_AB_PROJECTNAME.exe</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">サポートディレクトリ</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/exe/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{BFF4A54F-11BD-4522-AA14-B8DFE2F83BF6}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/マイ コンピュータ/NotifyLvFPGACompileFinish.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_internalName" Type="Str">Exe</Property>
				<Property Name="TgtF_productName" Type="Str">Exe</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A1C858F9-697F-4F35-A270-33776A6CEAAB}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">NotifyLvFPGACompileFinish.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
