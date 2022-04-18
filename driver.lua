package.preload['dvd.dvd_proxy_notifies'] = (function (...)
--[[=============================================================================
    DVD Proxy Notification Code

    Copyright 2015 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.properties = "2015.03.31"
end

------------------------------ Power Notification Functions ------------------------------
function NOTIFY.ON()
	SendSimpleNotify("ON")
end

function NOTIFY.OFF()
	SendSimpleNotify("OFF")
end	

function NOTIFY.PLAY()
	SendSimpleNotify("PLAY")
end

function NOTIFY.STOP()
	SendSimpleNotify("STOP")
end

function NOTIFY.PAUSE()
	SendSimpleNotify("PAUSE")
end

function NOTIFY.INPUT_OUTPUT_CHANGED(bindingID, input_id, output_id)
	local tParams = {}
	if (tonumber(output_id) >= 4000) then
		tParams = {INPUT = input_id, OUTPUT = output_id, AUDIO=true, VIDEO=false}
	else
		tParams = {INPUT = input_id, OUTPUT = output_id, AUDIO=false, VIDEO=true}
	end
    SendNotify("INPUT_OUTPUT_CHANGED", tParams, bindingID)
end end)
package.preload['dvd.dvd_proxy_commands'] = (function (...)
--[[=============================================================================
    ReceivedFromProxy Code for the DVD Proxy

    Copyright 2015 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.properties = "2015.03.31"
end

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Power Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function PRX_CMD.ON(idBinding, tParams)
	gDVDProxy:prx_ON(tParams)
end

function PRX_CMD.OFF(idBinding, tParams)
	gDVDProxy:prx_OFF(tParams)
end

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Menu Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function PRX_CMD.INFO(idBinding, tParams)
	gDVDProxy:prx_INFO(idBinding, tParams)
end

function PRX_CMD.GUIDE(idBinding, tParams)
	gDVDProxy:prx_GUIDE(idBinding, tParams)
end

function PRX_CMD.MENU(idBinding, tParams)
	gDVDProxy:prx_MENU(idBinding, tParams)
end

function PRX_CMD.CANCEL(idBinding, tParams)
	gDVDProxy:prx_CANCEL(idBinding, tParams)
end

function PRX_CMD.UP(idBinding, tParams)
	gDVDProxy:prx_UP(idBinding, tParams)
end

function PRX_CMD.DOWN(idBinding, tParams)
	gDVDProxy:prx_DOWN(idBinding, tParams)
end

function PRX_CMD.LEFT(idBinding, tParams)
	gDVDProxy:prx_LEFT(idBinding, tParams)
end

function PRX_CMD.RIGHT(idBinding, tParams)
	gDVDProxy:prx_RIGHT(idBinding, tParams)
end

function PRX_CMD.START_DOWN(idBinding, tParams)
	gDVDProxy:prx_START_DOWN(idBinding, tParams)
end

function PRX_CMD.START_UP(idBinding, tParams)
	gDVDProxy:prx_START_UP(idBinding, tParams)
end

function PRX_CMD.START_LEFT(idBinding, tParams)
	gDVDProxy:prx_START_LEFT(idBinding, tParams)
end

function PRX_CMD.START_RIGHT(idBinding, tParams)
	gDVDProxy:prx_START_RIGHT(idBinding, tParams)
end

function PRX_CMD.STOP_DOWN(idBinding, tParams)
	gDVDProxy:prx_STOP_DOWN(idBinding, tParams)
end

function PRX_CMD.STOP_UP(idBinding, tParams)
	gDVDProxy:prx_STOP_UP(idBinding, tParams)
end

function PRX_CMD.STOP_LEFT(idBinding, tParams)
	gDVDProxy:prx_STOP_LEFT(idBinding, tParams)
end

function PRX_CMD.STOP_RIGHT(idBinding, tParams)
	gDVDProxy:prx_STOP_RIGHT(idBinding, tParams)
end

function PRX_CMD.ENTER(idBinding, tParams)
	gDVDProxy:prx_ENTER(idBinding, tParams)
end

function PRX_CMD.RECALL(idBinding, tParams)
	gDVDProxy:prx_RECALL(idBinding, tParams)
end

function PRX_CMD.OPEN_CLOSE(idBinding, tParams)
	gDVDProxy:prx_OPEN_CLOSE(idBinding, tParams)
end

function PRX_CMD.EJECT(idBinding, tParams)
	gDVDProxy:prx_EJECT(idBinding, tParams)
end

function PRX_CMD.PROGRAM_A(idBinding, tParams)
	gDVDProxy:prx_PROGRAM_A(idBinding, tParams)
end

function PRX_CMD.PROGRAM_B(idBinding, tParams)
	gDVDProxy:prx_PROGRAM_B(idBinding, tParams)
end

function PRX_CMD.PROGRAM_C(idBinding, tParams)
	gDVDProxy:prx_PROGRAM_C(idBinding, tParams)
end

function PRX_CMD.PROGRAM_D(idBinding, tParams)
	gDVDProxy:prx_PROGRAM_D(idBinding, tParams)
end

function PRX_CMD.CUSTOM_1(idBinding, tParams)
	gDVDProxy:prx_CUSTOM_1(idBinding, tParams)
end

function PRX_CMD.CUSTOM_2(idBinding, tParams)
	gDVDProxy:prx_CUSTOM_2(idBinding, tParams)
end

function PRX_CMD.CUSTOM_3(idBinding, tParams)
	gDVDProxy:prx_CUSTOM_3(idBinding, tParams)
end

function PRX_CMD.PAGE_UP(idBinding, tParams)
	gDVDProxy:prx_PAGE_UP(idBinding, tParams)
end

function PRX_CMD.PAGE_DOWN(idBinding, tParams)
	gDVDProxy:prx_PAGE_DOWN(idBinding, tParams)
end

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Digit Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function PRX_CMD.NUMBER_0(idBinding, tParams)
	gDVDProxy:prx_NUMBER_0(idBinding, tParams)
end

function PRX_CMD.NUMBER_1(idBinding, tParams)
	gDVDProxy:prx_NUMBER_1(idBinding, tParams)
end

function PRX_CMD.NUMBER_2(idBinding, tParams)
	gDVDProxy:prx_NUMBER_2(idBinding, tParams)
end

function PRX_CMD.NUMBER_3(idBinding, tParams)
	gDVDProxy:prx_NUMBER_3(idBinding, tParams)
end

function PRX_CMD.NUMBER_4(idBinding, tParams)
	gDVDProxy:prx_NUMBER_4(idBinding, tParams)
end

function PRX_CMD.NUMBER_5(idBinding, tParams)
	gDVDProxy:prx_NUMBER_5(idBinding, tParams)
end

function PRX_CMD.NUMBER_6(idBinding, tParams)
	gDVDProxy:prx_NUMBER_6(idBinding, tParams)
end

function PRX_CMD.NUMBER_7(idBinding, tParams)
	gDVDProxy:prx_NUMBER_7(idBinding, tParams)
end

function PRX_CMD.NUMBER_8(idBinding, tParams)
	gDVDProxy:prx_NUMBER_8(idBinding, tParams)
end

function PRX_CMD.NUMBER_9(idBinding, tParams)
	gDVDProxy:prx_NUMBER_9(idBinding, tParams)
end

function PRX_CMD.STAR(idBinding, tParams)
	gDVDProxy:prx_STAR(idBinding, tParams)
end

function PRX_CMD.POUND(idBinding, tParams)
	gDVDProxy:prx_POUND(idBinding, tParams)
end

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Transport Navigation Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function PRX_CMD.PLAY(idBinding, tParams)
	gDVDProxy:prx_PLAY(idBinding, tParams)
end
	
function PRX_CMD.PAUSE(idBinding, tParams)
	gDVDProxy:prx_PAUSE(idBinding, tParams)
end

function PRX_CMD.STOP(idBinding, tParams)
	gDVDProxy:prx_STOP(idBinding, tParams)
end

function PRX_CMD.SKIP_REV(idBinding, tParams)
	gDVDProxy:prx_SKIP_REV(idBinding, tParams)
end

function PRX_CMD.SKIP_FWD(idBinding, tParams)
	gDVDProxy:prx_SKIP_FWD(idBinding, tParams)
end

function PRX_CMD.SCAN_REV(idBinding, tParams)
	gDVDProxy:prx_SCAN_REV(idBinding, tParams)
end

function PRX_CMD.SCAN_FWD(idBinding, tParams)
	gDVDProxy:prx_SCAN_FWD(idBinding, tParams)
end

function PRX_CMD.START_SCAN_REV(idBinding, tParams)
	gDVDProxy:prx_START_SCAN_REV(idBinding, tParams)
end

function PRX_CMD.STOP_SCAN_REV(idBinding, tParams)
	gDVDProxy:prx_STOP_SCAN_REV(idBinding, tParams)
end

function PRX_CMD.START_SCAN_FWD(idBinding, tParams)
	gDVDProxy:prx_START_SCAN_FWD(idBinding, tParams)
end

function PRX_CMD.STOP_SCAN_FWD(idBinding, tParams)
	gDVDProxy:prx_STOP_SCAN_FWD(idBinding, tParams)
end

function PRX_CMD.PVR(idBinding, tParams)
	gDVDProxy:prx_PVR(idBinding, tParams)
end

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Input Selection and AV Path Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function PRX_CMD.SET_INPUT(idBinding, tParams)
	gDVDProxy:prx_SET_INPUT(idBinding, tParams)
end
 end)
package.preload['dvd.dvd_proxy_class'] = (function (...)
--[[=============================================================================
    DVD Proxy Class Code

    Copyright 2015 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.properties = "2015.03.31"
end

DVDProxy = inheritsFrom(nil)

function DVDProxy:construct(dvdBindingID, bProcessesDeviceMessages)
	-- member variables
	self._DVDBindingID = dvdBindingID
	self._PowerState = ""						--Valid Values: "ON", "OFF", "POWER_ON_SEQUENCE", "POWER_OFF_SEQUENCE"
	self._VolumeIsRamping = false	
	self._MenuNavigationInProgress = false
     self._MenuNavigationMode = ""
	self._MenuNavigationProxyID = ""
     self._TransportNavigationInProgress = false
     self._TransportNavigationMode = ""
     self._TransportNavigationProxyID = ""
	self._ProcessesDeviceMessages = bProcessesDeviceMessages
	self._ControlMethod = ""						--Valid Values: "NETWORK", "SERIAL", "IR" 
	
	--added for AVSWitch support
     self._CurrentlySelectedInput = {}
	self._PreviouslySelectedInput = {}
end

------------------------------------------------------------------------
-- DVD Proxy Commands (PRX_CMD)
------------------------------------------------------------------------
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Power Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function DVDProxy:prx_ON(tParams)
--[[
	if (self._PowerState ~= nil) then
		if (self._PowerState == 'ON') or (self._PowerState == 'POWER_ON_SEQUENCE') then 
			LogInfo("Power State is '" .. self._PowerState .. "', exiting ON")
			return 
		end	
	end	
--]]
--[[
	if (self._ProcessesDeviceMessages == false) then
		self._PowerState = 'ON'
	else	
		self._PowerState = 'POWER_ON_SEQUENCE'
	end	
--]]
    if (gControlMethod == "IR") then			
		NOTIFY.ON()			
    end	
	ON()
end

function DVDProxy:prx_OFF(tParams)
    if (self._ProcessesDeviceMessages == false) then
	   self._PowerState = 'OFF'
    else	
	   self._PowerState = 'POWER_OFF_SEQUENCE'
    end	
    if (gControlMethod == "IR") then			
	   NOTIFY.OFF()			
    end 	
    OFF()
  
end


--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Menu Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function DVDProxy:prx_INFO(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "INFO")
end

function DVDProxy:prx_GUIDE(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "GUIDE")
end

function DVDProxy:prx_MENU(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "MENU")
end

function DVDProxy:prx_CANCEL(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "CANCEL")
end

function DVDProxy:prx_UP(idBinding, tParams)
     gMenuNavigationDebounceTimer:KillTimer()
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "UP")
end

function DVDProxy:prx_DOWN(idBinding, tParams)
     gMenuNavigationDebounceTimer:KillTimer()
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "DOWN")
end

function DVDProxy:prx_LEFT(idBinding, tParams)
     gMenuNavigationDebounceTimer:KillTimer()
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "LEFT")
end

function DVDProxy:prx_RIGHT(idBinding, tParams)
     gMenuNavigationDebounceTimer:KillTimer()
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "RIGHT")
end

function DVDProxy:prx_START_DOWN(idBinding, tParams)
	self:NavigateMenu(idBinding, "START_DOWN")
end

function DVDProxy:prx_START_UP(idBinding, tParams)
	self:NavigateMenu(idBinding, "START_UP")
end

function DVDProxy:prx_START_LEFT(idBinding, tParams)
	self:NavigateMenu(idBinding, "START_LEFT")
end

function DVDProxy:prx_START_RIGHT(idBinding, tParams)
	self:NavigateMenu(idBinding, "START_RIGHT")
end

function DVDProxy:prx_STOP_DOWN(idBinding, tParams)
	self:NavigateMenu(idBinding, "STOP_DOWN")
end

function DVDProxy:prx_STOP_UP(idBinding, tParams)
	self:NavigateMenu(idBinding, "STOP_UP")
end

function DVDProxy:prx_STOP_LEFT(idBinding, tParams)
	self:NavigateMenu(idBinding, "STOP_LEFT")
end

function DVDProxy:prx_STOP_RIGHT(idBinding, tParams)
	self:NavigateMenu(idBinding, "STOP_RIGHT")
end

function DVDProxy:prx_ENTER(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "ENTER")
end

function DVDProxy:prx_RECALL(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "RECALL")
end

function DVDProxy:prx_OPEN_CLOSE(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "OPEN_CLOSE")
end

function DVDProxy:prx_EJECT(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "EJECT")
end

function DVDProxy:prx_PROGRAM_A(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "PROGRAM_A")
end

function DVDProxy:prx_PROGRAM_B(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "PROGRAM_B")
end

function DVDProxy:prx_PROGRAM_C(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "PROGRAM_C")
end

function DVDProxy:prx_PROGRAM_D(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "PROGRAM_D")
end

function DVDProxy:prx_CUSTOM_1(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "CUSTOM_1")
end

function DVDProxy:prx_CUSTOM_2(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "CUSTOM_2")
end

function DVDProxy:prx_CUSTOM_3(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "CUSTOM_3")
end

function DVDProxy:prx_PAGE_UP(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "PAGE_UP")
end

function DVDProxy:prx_PAGE_DOWN(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "PAGE_DOWN")
end

---------------------- Menu Navigation Helper Functions ----------------------
function DVDProxy:NavigateMenu(idBinding, command_name)
	if (command_name == "STOP_UP") 
				or (command_name == "STOP_DOWN") 
				or (command_name == "STOP_LEFT") 
				or (command_name == "STOP_RIGHT") then
	     --gDoEventsDelayTimer:KillTimer()
		gMenuNavigationDebounceTimer:StartTimer()
		self._MenuNavigationInProgress = false
		self._MenuNavigationMode = ""
		self._MenuNavigationProxyID = ""
		return
	elseif (command_name == "START_UP") then 
		self._MenuNavigationMode = "UP"
	elseif (command_name == "START_DOWN") then 	
		self._MenuNavigationMode = "DOWN"	
	elseif (command_name == "START_LEFT") then 
		self._MenuNavigationMode = "LEFT"	
     elseif (command_name == "START_RIGHT") then 
		self._MenuNavigationMode = "RIGHT"
	else
		LogWarn(command_name .. " not handled in NavigateMenu()")
	end
	
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, self._MenuNavigationMode)
	self._MenuNavigationInProgress = true
	self._MenuNavigationProxyID = idBinding
	
end

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Digit Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function DVDProxy:prx_NUMBER_0(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "NUMBER_0")
end

function DVDProxy:prx_NUMBER_1(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "NUMBER_1")
end

function DVDProxy:prx_NUMBER_2(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "NUMBER_2")
end

function DVDProxy:prx_NUMBER_3(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "NUMBER_3")
end

function DVDProxy:prx_NUMBER_4(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "NUMBER_4")
end

function DVDProxy:prx_NUMBER_5(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "NUMBER_5")
end

function DVDProxy:prx_NUMBER_6(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "NUMBER_6")
end

function DVDProxy:prx_NUMBER_7(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "NUMBER_7")
end

function DVDProxy:prx_NUMBER_8(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "NUMBER_8")
end

function DVDProxy:prx_NUMBER_9(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "NUMBER_9")
end

function DVDProxy:prx_STAR(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "STAR")
end

function DVDProxy:prx_POUND(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "POUND")
end

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Transport Navigation Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function DVDProxy:prx_PLAY(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "PLAY")
end
	
function DVDProxy:prx_PAUSE(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "PAUSE")
end

function DVDProxy:prx_STOP(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "STOP")
end

function DVDProxy:prx_SKIP_REV(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "SKIP_REV")
end

function DVDProxy:prx_SKIP_FWD(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "SKIP_FWD")
end

function DVDProxy:prx_SCAN_REV(idBinding, tParams)
     gTransportNavigationDebounceTimer:KillTimer()
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "SCAN_REV")
end

function DVDProxy:prx_SCAN_FWD(idBinding, tParams)
     gTransportNavigationDebounceTimer:KillTimer()
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "SCAN_FWD")
end

function DVDProxy:prx_START_SCAN_REV(idBinding, tParams)
	self:NavigateTransport(idBinding, "START_SCAN_REV")
end

function DVDProxy:prx_STOP_SCAN_REV(idBinding, tParams)
	self:NavigateTransport(idBinding, "STOP_SCAN_REV")
end

function DVDProxy:prx_START_SCAN_FWD(idBinding, tParams)
	self:NavigateTransport(idBinding, "START_SCAN_FWD")
end

function DVDProxy:prx_STOP_SCAN_FWD(idBinding, tParams)
	self:NavigateTransport(idBinding, "STOP_SCAN_FWD")
end

function DVDProxy:NavigateTransport(idBinding, command_name)
	if (command_name == "STOP_SCAN_REV") 
				or (command_name == "STOP_SCAN_FWD") then
	     --gDoEventsDelayTimer:KillTimer()
		gTransportNavigationDebounceTimer:StartTimer()
		self._TransportNavigationInProgress = false
		self._TransportNavigationMode = ""
		self._TransportNavigationProxyID = ""
		return
	elseif (command_name == "START_SCAN_REV") then 
		self._TransportNavigationMode = "SCAN_REV"
	elseif (command_name == "START_SCAN_FWD") then 	
		self._TransportNavigationMode = "SCAN_FWD"	
	else
		LogWarn(command_name .. " not handled in NavigateTransport()")
	end
	
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, self._TransportNavigationMode)
	self._TransportNavigationInProgress = true
	self._TransportNavigationProxyID = idBinding
	
end

function DVDProxy:prx_PVR(idBinding, tParams)
	SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, "PVR")
end

------------------------------------------------------------------------
-- DVD Proxy Notifies
------------------------------------------------------------------------

function DVDProxy:dev_PowerOn()
	self._PowerState = "ON"
	NOTIFY.ON()	
end

function DVDProxy:dev_PowerOff()
	self._PowerState = "OFF"
	NOTIFY.OFF()
end

function DVDProxy:dev_Play()
	NOTIFY.PLAY()
end

function DVDProxy:dev_Stop()
	NOTIFY.STOP()
end

function DVDProxy:dev_Pause()
	NOTIFY.PAUSE()
end

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Input Selection and AV Path Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function DVDProxy:prx_SET_INPUT(idBinding, tParams)
	local input = tonumber(tParams["INPUT"] % 1000)
	local output = tonumber(tParams["OUTPUT"] % 1000)
	local input_id = tonumber(tParams["INPUT"])
	local class = tParams["CLASS"]
	local output_id = tonumber(tParams["OUTPUT"])
	local bSwitchSeparate, bVideo, bAudio = false, false, false
	local bSwitchSeparate = tParams["SWITCH_SEPARATE"]
	if (tParams["SWITCH_SEPARATE"] == "True") then bSwitchSeparate = true end
	if (tParams["VIDEO"] == "True") then bVideo = true end
	if (tParams["AUDIO"] == "True") then bAudio = true end
	self._CurrentlySelectedInput[output_id] = input_id
	if (gControlMethod == "IR") then			
		NOTIFY.INPUT_OUTPUT_CHANGED(self._AVSwitchBindingID, input, output)		
	end 		
	SET_INPUT(idBinding, output, input, input_id, class, output_id, bSwitchSeparate, bVideo, bAudio)
	self._PreviouslySelectedInput[output_id] = input_id
end end)
package.preload['common.c4_url_connection'] = (function (...)
--[[=============================================================================
    Base for a url connection driver

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_device_connection_base"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_url_connection = "2016.01.08"
end

UrlConnectionBase = inheritsFrom(DeviceConnectionBase)

function UrlConnectionBase:construct(Url)
	self.superClass():construct()
	self._Url = Url
end

function UrlConnectionBase:Initialize(ExpectAck, DelayInterval, WaitInterval)
	gControlMethod = "URL"
	self:superClass():Initialize(ExpectAck, DelayInterval, WaitInterval, self)
	OnURLConnectionChanged()
end

function UrlConnectionBase:ControlMethod()
	return "URL"
end

function UrlConnectionBase:SetUrl(Url)
	self._Url = Url
end

function UrlConnectionBase:SendCommand(sCommand, sHeader, ignoreConnect)
	ignoreConnect = ignoreConnect or false

	local ticketId
	if(self._IsConnected or ignoreConnect) then
		if (sHeader ~= nil) then
			ticketId = C4:urlPost(self._Url, sCommand, sHeader)
		else
			ticketId = C4:urlPost(self._Url, sCommand)
		end
	else
		LogWarn("Not connected. Command not sent.")
	end
	
	return ticketId
end

function UrlConnectionBase:SendCommandUrl(sCommand, url, sHeader, ignoreConnect)
	ignoreConnect = ignoreConnect or false

	local ticketId
	if(self._IsConnected or ignoreConnect) then
		if (sHeader ~= nil) then
			ticketId = C4:urlPost(url, sCommand, sHeader)
		else
			ticketId = C4:urlPost(url, sCommand)
		end
	else
		LogWarn("Not connected. Command not sent.")
	end
	
	return ticketId
end

function UrlConnectionBase:UrlPost(sCommand, url, sHeader, ignoreConnect)
	ignoreConnect = ignoreConnect or false

	local ticketId
	if(self._IsConnected or ignoreConnect) then
		if (sHeader ~= nil) then
			ticketId = C4:urlPost(url, sCommand, sHeader)
		else
			ticketId = C4:urlPost(url, sCommand)
		end
	else
		LogWarn("Not connected. Command not sent.")
	end
	
	return ticketId
end

function UrlConnectionBase:UrlGet(url, sHeader, ignoreConnect)
	ignoreConnect = ignoreConnect or false

	local ticketId
	if(self._IsConnected or ignoreConnect) then
		if (sHeader ~= nil) then
			ticketId = C4:urlGet(url, sHeader)
		else
			ticketId = C4:urlGet(url)
		end
	else
		LogWarn("Not connected. Command not sent.")
	end
	
	return ticketId
end

function UrlConnectionBase:ReceivedAsync(ticketId, sData, responseCode, tHeaders)
	LogTrace("ReceivedAsync[" .. ticketId .. "]: Response Code: " .. responseCode .. " Length: " .. string.len(sData))
	LogTrace(tHeaders)
	local tMessage = {
		["ticketId"] = ticketId,
		["sData"] = sData,
		["responseCode"] = responseCode,
		["tHeaders"] = tHeaders
	}
	
	status, err = pcall(HandleMessage, tMessage)
	if (not status) then
		LogError("LUA_ERROR: " .. err)
	end
end

function ConnectURL()
	gIsUrlConnected = true
	SetControlMethod()
end

function DisconnectURL()
	gIsUrlConnected = false
	SetControlMethod()
end
 end)
package.preload['connections'] = (function (...)
--[[=============================================================================
    Functions for managing the status of the drivers bindings and connection state
 
    Copyright 2015 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_network_connection"
require "common.c4_serial_connection"
require "common.c4_ir_connection"
require "common.c4_url_connection"

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.connections = "2015.03.31"
end

-- constants
COM_USE_ACK = true
COM_COMMAND_DELAY_MILLISECONDS = 650
COM_COMMAND_RESPONSE_TIMEOUT_SECONDS = 4

NETWORK_PORT = 9030
IR_BINDING_ID = 2
SERIAL_BINDING_ID = 1
NETWORK_BINDING_ID = 6001

BROADCAST_BINDING_ID = 6002
BROADCAST_PORT = 9

--[[=============================================================================
    OnSerialConnectionChanged(idBinding, class, bIsBound)
  
    Description:
    Function called when a serial binding changes state(bound or unbound).
  
    Parameters:
    idBinding(int) - ID of the binding whose state has changed (SERIAL_BINDING_ID).
    class(string)  - Class of binding that has changed.
                     A single binding can have multiple classes(i.e. COMPONENT,
                     STEREO, RS_232, etc).
                     This indicates which has been bound or unbound.
    bIsBound(bool) - Whether the binding has been bound or unbound.
  
    Returns:
    None
===============================================================================]]
function OnSerialConnectionChanged(idBinding, class, bIsBound)
	
end

--[[=============================================================================
    OnIRConnectionChanged(idBinding, class, bIsBound)
  
    Description:
    Function called when an IR binding changes state(bound or unbound).
  
    Parameters:
    idBinding(int) - ID of the binding whose state has changed (SERIAL_BINDING_ID).
    class(string)  - Class of binding that has changed.
                     A single binding can have multiple classes(i.e. COMPONENT,
                     STEREO, RS_232, etc).
                     This indicates which has been bound or unbound.
    bIsBound(bool) - Whether the binding has been bound or unbound.
  
    Returns:
    None
===============================================================================]]
function OnIRConnectionChanged(idBinding, class, bIsBound)
	
end

--[[=============================================================================
    OnNetworkConnectionChanged(idBinding, bIsBound)
  
    Description:
    Function called when a network binding changes state(bound or unbound).
  
    Parameters:
    idBinding(int) - ID of the binding whose state has changed.
    bIsBound(bool) - Whether the binding has been bound or unbound.
  
    Returns:
    None
===============================================================================]]
function OnNetworkConnectionChanged(idBinding, bIsBound)
    if (idBinding == NETWORK_BINDING_ID) and bIsBound then
	   gNetworkInitTimer:StartTimer()
    elseif (idBinding == NETWORK_BINDING_ID) and (bIsBound ~= true) then

    end
end

function OnNetworkInitTimerExpired()
    gNetworkInitTimer:KillTimer()
    GetMACAddress()
    GetIPAddress()
end

--[[=============================================================================
    OnNetworkStatusChanged(idBinding, nPort, sStatus)
  
    Description:
    Called when the network connection status changes. Sets the updated status of the specified binding
  
    Parameters:
    idBinding(int)  - ID of the binding whose status has changed
    nPort(int)      - The communication port of the specified bindings connection
    sStatus(string) - "ONLINE" if the connection status is to be set to Online,
                      any other value will set the status to Offline
  
    Returns:
    None
===============================================================================]]
function OnNetworkStatusChanged(idBinding, nPort, sStatus)
    if (idBinding == NETWORK_BINDING_ID) then
	   if (sStatus	== "ONLINE") then
		  if gPowerOnInProgressTimer:TimerStarted() then
			 gPowerOnInProgressTimer:KillTimer()
			 gDVDProxy:dev_PowerOn()
		  end
		  
		  if gPowerOffInProgressTimer:TimerStopped() then gQueryPlayerInfoDelayTimer:StartTimer(3, "SECONDS") end
		  
		  --if (gProjectorProxy._PowerState == "OFF") then gQueryStatusDelayTimer:StartTimer(2, "SECONDS") end
		  
	   else
		  --DVD does not respond when OFF
		  --if timer is not killed here, then the driver will continually try to reconnect when TV is OFF
		  if (gCon ~= nil) then
			 gCon._NetworkReconnectTimer:KillTimer()	
		  end
	   end				 
    else
    end		
end

function OnQueryPlayerInfoDelayTimerExpired()
    gQueryPlayerInfoDelayTimer:KillTimer()
    PackAndQueueCommand("GetPlayerFirmwareVersion", "?Z")
    PackAndQueueCommand("GetPlayerModelName", "?L")
end

--[[=============================================================================
    OnURLConnectionChanged(url)
  
    Description:
    Function called when the c4_url_connection is created.
  
    Parameters:
    url - url used by the url connection.
  
    Returns:
    None
===============================================================================]]
function OnURLConnectionChanged(url)
	
end

--[[=============================================================================
    DoEvents()
  
    Description:
    Called from OnSendTimeExpired in the DeviceConnectionBase.
  
    Parameters:
    None
  
    Returns:
    None
===============================================================================]]
gWasVolumeRamping = false
gWasMenuNavigating = false
gWasTransportNavigating = false
function DoEvents()
    if (gDVDProxy._MenuNavigationInProgress == true) then
	   SEND_COMMAND_FROM_COMMAND_TABLE(gDVDProxy._MenuNavigationProxyID, gDVDProxy._MenuNavigationMode)
	   gWasMenuNavigating = true

    else
	   if (gWasMenuNavigating) then
		  gCon._CommandQueue:clear()
		  gWasMenuNavigating = false
		  --gDoEventsDelayTimer:KillTimer()
	   end
    end		
    
    if (gDVDProxy._TransportNavigationInProgress == true) then
	   SEND_COMMAND_FROM_COMMAND_TABLE(gDVDProxy._TransportNavigationProxyID, gDVDProxy._TransportNavigationMode)
	   gWasTransportNavigating = true

    else
	   if (gWasTransportNavigating) then
		  gCon._CommandQueue:clear()
		  gWasTransportNavigating = false
		  --gDoEventsDelayTimer:KillTimer()
	   end
    end	
end

function OnDoEventsDelayTimerExpired()
    LogTrace("OnDoEventsDelayTimerExpired()")
    gDoEventsDelayTimer:KillTimer()
    DoEvents()
end

function OnMenuNavigationDebounceTimerExpired()
    LogTrace("OnMenuNavigationDebounceTimerExpired()")
    gMenuNavigationDebounceTimer:KillTimer()
end

function OnTransportNavigationDebounceTimerExpired()
    LogTrace("OnTransportNavigationDebounceTimerExpired()")
    gTransportNavigationDebounceTimer:KillTimer()
end

--[[=============================================================================
    SendKeepAlivePollingCommand()
  
    Description:
    Sends a driver specific polling command to the connected system
  
    Parameters:
    None
  
    Returns:
    None
===============================================================================]]
function SendKeepAlivePollingCommand()
    LogTrace("SendKeepAlivePollingCommand()")
	
	--TODO: set keep alive command for the network connected system if required.
    local command = "?L"  --"DIMQSTN"
    --LogTrace("command = " .. command)
    if gPowerOffInProgressTimer:TimerStopped() then PackAndQueueCommand("SendKeepAlivePollingCommand", command) end
end
 end)
package.preload['proxy_commands'] = (function (...)
--[[=============================================================================
    Commands received from the TV proxy (ReceivedFromProxy)

    Copyright 2015 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.device_messages = "2015.03.31"
end

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Power Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
--[[
	Proxy Command: ON
	Parameters:
--]]
function ON()
    LogTrace("ON() PowerState: " .. tostring(gDVDProxy._PowerState) .. ", gPowerOffInProgressTimer:TimerStarted: " .. tostring(gPowerOffInProgressTimer:TimerStarted()))
    
    local command_delay = tonumber(Properties["Power On Delay Seconds"])
    local delay_units = "SECONDS"
          
    if (gDVDProxy._PowerState ~= nil) then
	   if (gDVDProxy._PowerState == 'ON')  then 
		  if ((gControlMethod == "IR") or (gDVDProxy._ProcessesDeviceMessages == false)) then
			 command_delay = tonumber(Properties["Power On Delay Seconds"])
			 delay_units = "SECONDS"
		  else
			 command_delay = tonumber(Properties["Command Delay Milliseconds"])
			 delay_units = "MILLISECONDS"
		  end
	   elseif (gDVDProxy._PowerState == 'POWER_ON_SEQUENCE') then
		  command_delay = tonumber(Properties["Power On Delay Seconds"])
		  delay_units = "SECONDS"
	   end	
    else
	   command_delay = tonumber(Properties["Power On Delay Seconds"])
	   delay_units = "SECONDS"
    end	
    
    if (gControlMethod == "IR") then
	   local command = CMDS_IR["ON"]
	   LogTrace("command = " .. command)
	   PackAndQueueCommand("ON", command, command_delay, delay_units)
    else

	   gPowerOnInProgressTimer:StartTimer(60, "SECONDS")
	                    
	   if gPowerOffInProgressTimer:TimerStarted() then
		  --quick power on AFTER power off, need TV to turn off before sending on. This occurs in OnPowerOffTimer...
		  return
	   end
	   
	   sendWOL()
	   
	   --Power On command not supported...WOL (above will turn on unit)
	   --If unit is not in Quickstart mode, then WOL will bring unit online and Power On timer will be started again in NetworkConnectionStatusChanged()...
	   if (gControlMethod == "Serial") then
		  gPowerOnDelayTimer:StartTimer(tonumber(Properties["Command Delay Milliseconds"]), "MILLISECONDS")
	   end
    end
    
end

function sendWOL()
    LogTrace("Sending WoL...")
    
    local mac = Properties["MAC Address"]
    if (mac == nil or mac == "") then
	   mac = C4:GetDeviceMAC(NETWORK_BINDING_ID)
	   if (mac ~= nil and mac ~= "") then
		  UpdateProperty("MAC Address", mac)
	   else
		  LogWarn("Exiting sendWOL(), GetDeviceMAC failed!")
		  return
	   end
    end
    
    if (LuaC4Object.SendWOL) then	--C4:SendWOL() added in OS 2.10
	   local mac_string = mac:gsub("%X", "")
	   for i = 1,5 do	   
		  C4:SendWOL(mac_string, 9)
	   end
    else
	   local mac_string = string.gsub(mac, ":", " ")
	   local packet_string = "FF FF FF FF FF FF " .. string.rep(mac_string, 16, " ")
	   local magic_packet = tohex(packet_string)

	   C4:CreateNetworkConnection (BROADCAST_BINDING_ID, "255.255.255.255", BROADCAST_PORT) --create network connection BROADCAST_BINDING_ID for Wake on Lan
	   C4:NetConnect(BROADCAST_BINDING_ID, BROADCAST_PORT, "UDP") --connect to connection BROADCAST_BINDING_ID and make it UDP for Wake On Lan
	   
	   for i = 1,5 do	  
		  C4:SendToNetwork (BROADCAST_BINDING_ID, BROADCAST_PORT, magic_packet)
	   end
    end
    
end

--[[
	Proxy Command: OFF
	Parameters:
--]]
function OFF()
    if (Properties["On Power Off"] == "Home") then
	   PackAndQueueCommand("Home", CMDS["Home"])
    end

    local delay_units = "SECONDS"
    
    local command_delay = tonumber(Properties["Power Off Delay Seconds"])
    if gPowerOnInProgressTimer:TimerStarted() then command_delay = 60 end
    
    local powerOffDelayTimerInterval = 1
    if gPowerOnInProgressTimer:TimerStarted() then powerOffDelayTimerInterval = tonumber(Properties["Power On Delay Seconds"]) end
    
    gPowerOnInProgressTimer:KillTimer()
    gPowerOffInProgressTimer:StartTimer(command_delay, delay_units)
    
    local command 
    if (gControlMethod == "IR") then
		-- TODO: create packet/command to send to the device
		command = CMDS_IR["OFF"]
		LogTrace("command = " .. command)
		PackAndQueueCommand("OFF", command, command_delay, delay_units)		
    else
		-- TODO: create packet/command to send to the device
		--command = CMDS["OFF"]
		--LogTrace("command = " .. command)
		--PackAndQueueCommand("OFF", command, command_delay, delay_units)	
		gPowerOffDelayTimer:StartTimer(powerOffDelayTimerInterval, "SECONDS")
		LogTrace("powerOffDelayTimerInterval = " .. powerOffDelayTimerInterval .. " SECONDS")

		-- TODO: If the device will automatically report power status after
		--	the Off command is sent, then the line below can be commented out
		--GetDevicePowerStatus()
    end 
end

function OnPowerOnInProgressTimerExpired()
    LogTrace("OnPowerOnInProgressTimerExpired")
    
end

function OnPowerOffInProgressTimerExpired()
    LogTrace("OnPowerOffInProgressTimerExpired")
    gPowerOffInProgressTimer:KillTimer()
    
    gDVDProxy:dev_PowerOff()
   
    --for quick power on after power off...
    if gPowerOnInProgressTimer:TimerStarted() then
	   --gSendPowerOnAfterPowerOffDelayTimer:StartTimer(tonumber(Properties["Power Off Delay Seconds"]), "SECONDS")
	   gSendPowerOnAfterPowerOffDelayTimer:StartTimer(3, "SECONDS")
    end
end

function OnPowerOnDelayTimerExpired()
    LogTrace("OnPowerOnDelayTimerExpired")
    gPowerOnDelayTimer:KillTimer()
    
    PackAndQueueCommand("ON", CMDS["ON"])
    gQueryStatusDelayTimer:StartTimer(tonumber(Properties["Power On Delay Seconds"]), "SECONDS")
    
end

function OnPowerOffDelayTimerExpired()
    LogTrace("OnPowerOffDelayTimerExpired")
    gPowerOffDelayTimer:KillTimer()
    
    PackAndQueueCommand("OFF", CMDS["OFF"])
    
end

function OnSendPowerOnAfterPowerOffDelayTimerExpired()
    LogTrace("OnSendPowerOnAfterPowerOffDelayTimerExpired")
    gSendPowerOnAfterPowerOffDelayTimer:KillTimer()
    
    ON()
end

function OnQueryStatusDelayTimerExpired()
    LogTrace("OnQueryStatusDelayTimerExpired")
    gQueryStatusDelayTimer:KillTimer()
       
    PackAndQueueCommand("PlayerActiveModeRequest", "?P")
    
    --[[
    if gPowerOnInProgressTimer:TimerStarted() then
	   gQueryStatusDelayTimer:StartTimer(3, "SECONDS")
    end
    --]]
    
end

function SET_INPUT(idBinding, output, input, input_id, class, output_id, bSwitchSeparate, bVideo, bAudio)
    --if (idBinding == SWITCHER_PROXY) then
	   if (input >= MINIAPP_BINDING_START % 1000 and input <= MINIAPP_BINDING_END % 1000) then
		  -- Get the device ID of the proxy handling the miniapp switch on this driver
		  local proxyDeviceId, _ = next (C4:GetBoundConsumerDevices (C4:GetDeviceID (), idBinding))

		  -- Get the device ID of the minidriver proxy connected to the requested input on this driver
		  local appProxyId = C4:GetBoundProviderDevice (proxyDeviceId, input_id)

		  -- Get the device ID of the minidriver protocol connected to the minidriver proxy
		  local appDeviceId = C4:GetBoundProviderDevice (appProxyId, 5001)

		  -- get the details for the app for this kind of universal-minidriver-compatible type
		  local appId = GetRelevantUniversalAppId (appDeviceId, MINIAPP_TYPE)
		  local appName = GetRelevantUniversalAppId (appDeviceId, 'APP_NAME')

		  local command = appId
		  --PackAndQueueCommand("SET_INPUT", command)
		  
		  
		  local delay, delay_units
		  --if (gPowerOnInProgressTimer:TimerStarted()) then
		  if (gDVDProxy._PowerState ~= 'ON') then
			 delay = 60	
			 delay_units = "SECONDS"
		  else
			 delay = tonumber(Properties["Command Delay Milliseconds"])
			 delay_units = "MILLISECONDS"
		  end
		  gSetInputDelayTimer:StartTimer(delay, delay_units)
		  gSetInputDelayTimer._CallbackParam = command	 
		  
		  --update IO mapping tables
		  local id = appId
		  tInputResponseMap[id] = appName
		  tInputConnMapByID[input] = {Name = appName,BindingID = 5001,}
		  tInputConnMapByName[appName] = {ID = input,BindingID = 5001,}

		  if ((Properties ['Passthrough Mode'] or 'On') ~= 'On') then
			  local passthroughProxyDeviceId, _ = next (C4:GetBoundConsumerDevices (C4:GetDeviceID (), PASSTHROUGH_PROXY))
			  local _timer = function (timer)
				  print ('Looking for ' .. appProxyId)
				  for roomId, deviceId in pairs (RoomIDSources) do
					  if (deviceId == appProxyId) then
						  C4:SendToDevice (roomId, 'SELECT_VIDEO_DEVICE', {deviceid = passthroughProxyDeviceId})
					  end
				  end
			  end
			  C4:SetTimer (500, _timer)
		  end   
	   end
    --end
end

function OnSetInputDelayTimerExpired(command)
    LogTrace("OnSetInputDelayTimerExpired, command = " .. command)
    gSetInputDelayTimer:KillTimer()
    
    PackAndQueueCommand("SET_INPUT", command)
end

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Helper Functions
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

--[[
	Helper Function: SEND_COMMAND_FROM_COMMAND_TABLE
	Parameters:
		idBinding: proxy id	
		output: mod 1000 value of Output Connection id
		command_name: name of command to be sent
--]]

-- Mapping from remote / UI commands to button map properties, to determine if 'override' for button
PROP_MAP = {}
PROP_MAP["MENU"] = "MENU Button"
PROP_MAP["GUIDE"] = "GUIDE Button"
PROP_MAP["INFO"] = "INFO Button"
PROP_MAP["CANCEL"] = "CANCEL Button"
PROP_MAP["RECALL"] = "PREV Button"
PROP_MAP["PVR"] = "DVR Button"
PROP_MAP["STAR"] = "STAR Button"
PROP_MAP["POUND"] = "POUND Button"
PROP_MAP["PAGE_UP"] = "PAGE UP Button"
PROP_MAP["PAGE_DOWN"] = "PAGE DOWN Button"
PROP_MAP["CUSTOM_1"] = "CUSTOM 1 Button"
PROP_MAP["CUSTOM_2"] = "CUSTOM 2 Button"
PROP_MAP["CUSTOM_3"] = "CUSTOM 3 Button"
PROP_MAP["PROGRAM_A"] = "RED Button"
PROP_MAP["PROGRAM_B"] = "GREEN Button"
PROP_MAP["PROGRAM_C"] = "YELLOW Button"
PROP_MAP["PROGRAM_D"] = "BLUE Button"

function SEND_COMMAND_FROM_COMMAND_TABLE(idBinding, command_name)
    LogTrace("SEND_COMMAND_FROM_COMMAND_TABLE(), idBinding=" .. idBinding .. ", command_name=" .. command_name)
    
    local buttonmap = PROP_MAP[command_name] or ""
    if (buttonmap ~= "") then
	   local prop = Properties[buttonmap] or "Do Nothing"
	   if (prop ~= "Do Nothing") then
		  LogTrace(buttonmap .. " Mapped to: " .. prop)
		  command_name = prop
	   else
		  LogTrace(buttonmap .. " set to Do Nothing.")
		  return
	   end
    end
	
	-- TODO: create packet/command to send to the device
	local command = GetCommandFromCommandTable(idBinding, command_name)
	
	if (command == nil) then
		LogTrace("command is nil")
	else
		LogTrace("command = " .. command)
		PackAndQueueCommand(command_name, command)
	end			
end

--[[
	Helper Function: GetCommandFromCommandTable
	Parameters:
		idBinding: proxy id	
		output: mod 1000 value of Output Connection id
		command_name: name of command to be returned
--]]
function GetCommandFromCommandTable(idBinding, command_name)
	LogTrace("GetCommand()")
	local t = {}
	
	-- TODO: create appropriate commands table structure
	
	if (gControlMethod == "IR") then
		t = CMDS_IR
	else
		t = CMDS
	end	

	if (t[idBinding] ~= nil) then
	   if (t[idBinding][command_name] ~= nil) then
		  return t[idBinding][command_name]
	   end
	end
	
	if (t[command_name] ~= nil) then
		return t[command_name]
	else
		LogWarn('GetCommandFromCommandTable: command not defined - '.. command_name)
		return nil
	end	
	
end

--[[
	Helper Function: GetDevicePowerStatus
--]]
function GetDevicePowerStatus()
    LOG:Trace("GetDevicePowerStatus()")
	
	-- TODO: verify table entry in Volume in QUERY table
	local command = CMDS["GET_POWER_STATUS"]
	LOG:Trace("command = " .. command)
	PackAndQueueCommand("GetDevicePowerStatus", command)	
end	 end)
package.preload['properties'] = (function (...)
--[[=============================================================================
    Properties Code

    Copyright 2015 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.properties = "2015.03.31"
end

function ON_PROPERTY_CHANGED.NetworkKeepAliveIntervalSeconds(propertyValue)
	gNetworkKeepAliveInterval = tonumber(propertyValue)

end

--[[=============================================================================
    UpdateProperty(propertyName, propertyValue)
  
    Description:
    Sets the value of the given property in the driver
  
    Parameters:
    propertyName(string)  - The name of the property to change
    propertyValue(string) - The value of the property being changed
  
    Returns:
    None
===============================================================================]]
function UpdateProperty(propertyName, propertyValue)

	if (Properties[propertyName] ~= nil) then
		C4:UpdateProperty(propertyName, propertyValue)
	end
end

 end)
package.preload['dvd_init'] = (function (...)
--[[=============================================================================
    TV Protocol Initialization Functions

    Copyright 2015 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.device_messages = "2015.03.31"
end


PROTOCOL_DECLARATIONS = {}

function ON_DRIVER_EARLY_INIT.dvd_init()

end

function ON_DRIVER_INIT.dvd_init()
	--LogTrace("ON_DRIVER_INIT.ProtocolDeclarations()")
	for k,v in pairs(PROTOCOL_DECLARATIONS) do
		if (PROTOCOL_DECLARATIONS[k] ~= nil and type(PROTOCOL_DECLARATIONS[k]) == "function") then
			PROTOCOL_DECLARATIONS[k]()
		end
	end	
	
	Buttons = {
		[300] = {DO_PUSH = 'PLAY', },
		[301] = {DO_PUSH = 'PAUSE', },
		--[302] = {DO_PUSH = 'PLAYPAUSE', },
		--[303] = {DO_PUSH = 'STOP', },
		--[304] = {DO_PUSH = 'SKIP_FWD', },
		--[305] = {DO_PUSH = 'SKIP_REV', },

		--[350] = {DO_PUSH = 'MUTE_ON', },
		--[351] = {DO_PUSH = 'MUTE_OFF', },
		--[352] = {DO_PUSH = 'MUTE_TOGGLE', },
		--[353] = {DO_PUSH = 'START_VOL_UP', DO_RELEASE = 'STOP_VOL_UP', DO_CLICK = 'STOP_VOL_UP', },
		--[354] = {DO_PUSH = 'START_VOL_DOWN', DO_RELEASE = 'STOP_VOL_DOWN', DO_CLICK = 'STOP_VOL_DOWN', },
	}
	
end

function ON_DRIVER_LATEINIT.dvd_init()
end
	
function PROTOCOL_DECLARATIONS.CommandsTableInit_IR()
	LogTrace("PROTOCOL_DECLARATIONS.CommandsTableInit_IR()")

	CMDS_IR = {
		
	}			
		
	CMDS_IR[DVD_PROXY_BINDINGID] = {}
	
end

function PROTOCOL_DECLARATIONS.CommandsTableInit_Serial()
	LogTrace("PROTOCOL_DECLARATIONS.CommandsTableInit_Serial()")

	CMDS = {
		--index:  Proxy Command Name
		--value:  Protocol Command Data
		
		--Power
		["ON"]             = "!7PWR01",
		["OFF"]            = "!7PWR00",
		
		--Transport
		["PLAY"]		=	"!7PLY",
		["STOP"]		=	"!7STP",
		["PAUSE"]		=	"!7PAS",
		["SKIP_FWD"]	=	"!7SKPNX",	
		["SCAN_FWD"]	=	"!7SCNFF",	
		["SKIP_REV"]	=	"!7SKPPV",	
		["SCAN_REV"]	=	"!7SCNRF",
		["EJECT"]		=	"!7OPCOP",		--OPEN
		["OPEN_CLOSE"]	=	"!7OPCOP",		--OPEN
		
		--Menu
		["INFO"] 		= "!7DSP",	--Display
		["GUIDE"] 		= "!7HOM",	--Home Menu
		["MENU"] 		= "!7TMN",	--Top Menu
		["CANCEL"] 		= "!7RET",
		["UP"] 			= "!7OSD3",
		["DOWN"] 		= "!7OSD4",
		["LEFT"] 		= "!7OSD1",
		["RIGHT"] 		= "!7OSD2",
		["ENTER"]		= "!7ENT",
		["RECALL"]      = "!7RET",
		["PREV"]        = "!7RET",
		
		--Digits
		["NUMBER_0"]       	= "!7NUM0", 	
		["NUMBER_1"]       	= "!7NUM1",		
		["NUMBER_2"]       	= "!7NUM2",	
		["NUMBER_3"]       	= "!7NUM3",	
		["NUMBER_4"]       	= "!7NUM4",	
		["NUMBER_5"]       	= "!7NUM5",	
		["NUMBER_6"]       	= "!7NUM6",	
		["NUMBER_7"]       	= "!7NUM7",	
		["NUMBER_8"]       	= "!7NUM8",	
		["NUMBER_9"]       	= "!7NUM9",
		["STAR"]           	= "",
		["DOT"]            	= "",	
		
		--Color
		["PROGRAM_A"]       = "!7CBC1",		--RED
		["PROGRAM_B"]       = "!7CBC2",		--GREEN
		["PROGRAM_C"]       = "!7CBC4",		--YELLOW
		["PROGRAM_D"]       = "!7CBC3",		--BLUE		
		
		-- Tascam  commands
		["Home"]       		    = "!7HOM",
		["Top Menu"]       		= "!7TMN",
		["Pop-up Menu"]       	= "!7PMN",
		["Status"]       		= "!7DSP",
		["Return"]       		= "!7RET",
		["Clear"]       		= "!7CLR",
		["Audio"]       		= "",
		["Subtitle"]       		= "!7SBT1",
		["Display"]       		= "!7DSP",
		["Function"]       		= "",
		["Audio Parameter"]     = "",
		["Video Parameter"]     = "",
		["Continued"]       	= "",
		["HDR"]       			= "!7HDRAT",
		["Source"]       		= "",
		["Repeat"]       		= "!7APL02",
		["A-B"]       			= "",
		["Replay"]    			= "",
		["Short Skip"]    		= "",
		["Direct"]       		= "",
		["HDMI Mode"]       	= "",		
		["Resolution Up"]       = "",	
		["Resolution Down"]     = "",	
		["Dimmer"]       		= "",
		["CD/SACD"]       		= "",
		["Angle"]       		= "",
	     ["RED"]       			= "!7CBC1",	--RED
		["GREEN"]       		= "!7CBC2",	--GREEN
		["YELLOW"]       		= "!7CBC4",	--YELLOW
		["BLUE"]       	     	= "!7CBC3",	--BLUE	

	}

	CMDS[DVD_PROXY_BINDINGID] = {}
	
	tInputResponseMap = {}
     tInputConnMapByID = {}
     tInputConnMapByName = {}
	
end

function ReverseTable(a)
	local b = {}
	for k,v in pairs(a) do b[v] = k end
	return b
end end)
package.preload['device_messages'] = (function (...)
--[[=============================================================================
    Get, Handle and Dispatch message functions

    Copyright 2015 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.device_messages = "2015.03.31"
end

--[[=============================================================================
    GetMessage()
  
    Description:
    Used to retrieve a message from the communication buffer. Each driver is
    responsible for parsing that communication from the buffer.
  
    Parameters:
    None
  
    Returns:
    A single message from the communication buffer
===============================================================================]]
function GetMessage()
	local message, pos
	
	--TODO: Implement a string using Lua captures and patterns which 
	--		will be used by string.match to parse out a single message
	--      from the receive buffer(gReceiveBuffer).
	--		The example shown here will return all characters from the beginning of 
	--		the gReceiveBuffer up until but not including the first carriage return.
	local pattern = "^(.-)\r\n()"
	
	if (gReceiveBuffer:len() > 0) then
		message, pos = string.match(gReceiveBuffer, pattern)
		if (message == nil) then
			--LOG:Info("Do not have a complete message")
			return ""
		end
		gReceiveBuffer = gReceiveBuffer:sub(pos)		
	end

	return message
	
end

--[[=============================================================================
    HandleMessage(message)]

    Description
    This is where we parse the messages returned from the GetMessage()
    function into a command and data. The call to 'DispatchMessage' will use the
    'name' variable as a key to determine which handler routine, function, should
    be called in the DEV_MSG table. The 'value' variable will then be passed as
    a string parameter to that routine.

    Parameters
    message(string) - Message string containing the function and value to be sent to
                      DispatchMessage

    Returns
    Nothing
===============================================================================]]
function HandleMessage(message)

    LogTrace("HandleMessage. Message is ==>%s<==", message)
	
    local name, value, pos = "", "", 0
    local last_command = gCon._LastCommand.command_name
    LogInfo("HandleMessage. LastCommand: " .. tostring(last_command))
    
    if (last_command == "ON") then
	   name = "ON"
	   value = message
    elseif (last_command == "OFF") then
	   name = "OFF"
	   value = message
    else
	    local pattern =  "(%a+)(.+)()"

	    name, value, pos = string.match(message, pattern)
	    name = name or message
	    value = value or ""		
    end
    
    gCon._CommandRetryCount = 0
    gCon._WaitResponseTimer:KillTimer()
    gHandleACKDelayTimer:StartTimer(tonumber(Properties["Command Delay Milliseconds"]), "MILLISECONDS")

    DispatchMessage(name, value)
	
end

function OnHandleACKDelayTimerExpired()
    LogTrace("OnHandleACKDelayTimerExpired")
    gHandleACKDelayTimer:KillTimer()
    
    gCon:HandleACK()
end

--[[=============================================================================
    DispatchMessage(MsgKey, MsgData)

    Description
    Parse routine that will call the routines to handle the information returned
    by the connected system.

    Parameters
    MsgKey(string)  - The function to be called from within DispatchMessage
    MsgData(string) - The parameters to be passed to the function found in MsgKey

    Returns
    Nothing
===============================================================================]]
function DispatchMessage(MsgKey, MsgData)
	if (DEV_MSG[MsgKey] ~= nil and (type(DEV_MSG[MsgKey]) == "function")) then
		LogInfo("DEV_MSG." .. tostring(MsgKey) .. ":  " .. tostring(MsgData))
		local status, err = pcall(DEV_MSG[MsgKey], MsgData)
		if (not status) then
			LogError("LUA_ERROR: " .. err)
		end
	else
		LogTrace("HandleMessage: Unhandled command = " .. MsgKey)
	end
end

function DEV_MSG.OFF(value)
    LogTrace("DEV_MSG.OFF()")
    if (value ~= "R") then LogWarn("Exiting DEV_MSG.OFF(), Error: " .. value) return end

    gPowerOffInProgressTimer:StartTimer(tonumber(Properties["Power Off Delay Seconds"]), "SECONDS")
    --gDVDProxy:dev_PowerOff() 
end

function DEV_MSG.ON()
    LogTrace("DEV_MSG.ON()")

    gPowerOnInProgressTimer:KillTimer()
    gDVDProxy:dev_PowerOn()
end

function DEV_MSG.R(value)
    LogTrace("DEV_MSG.R(), value = " .. value)
    --PackAndQueueCommand("PlayerActiveModeRequest", "?P")
    gQueryStatusDelayTimer:StartTimer(1, "SECONDS")
end

gPlayerActiveModeMap = {
    ["P00"] = "TRAY OPEN",	
    ["P01"] = "TRAY CLOSED", 
    ["P02"] = "GETTING MEDIA INFORMAYION",	
    ["P03"] = "TRAY MOVING", 
    ["P04"] = "PLAYBACK", 
    ["P05"] = "PAUSE NO VIDEO MUTE", 
    ["P06"] = "PAUSE WITH VIDEO MUTE", 
    ["P07"] = "SEARCH",
    ["P08"] = "SCAN",
    ["P09"] = "SLOW",
    
}

gPlayerActiveMode = "" 

function DEV_MSG.PlayerActiveMode(value)

    if (value == "P00") then

    elseif (value == "P01") then
	   --player responds with TRAY CLOSED when STOP is sent...
	   if (gPlayerActiveMode ~= "TRAY MOVING") then 
		  if (gDeviceStatus ~= "STOPPED") then 
			 gDVDProxy:dev_Stop() 
			 gDeviceStatus = "STOPPED"
		  end
	   end
    elseif (value == "P02") then
	   gQueryStatusDelayTimer:StartTimer(1, "SECONDS")
    elseif (value == "P03") then
	   gQueryStatusDelayTimer:StartTimer(1, "SECONDS")
    elseif (value == "P04") then
	   if (gPlayerActiveMode ~= "PLAYBACK") then gDVDProxy:dev_Play() end
    elseif (value == "P05") then
	   if (gPlayerActiveMode ~= "PAUSE NO VIDEO MUTE") then gDVDProxy:dev_Pause() end
    elseif (value == "P06") then
	   if (gPlayerActiveMode ~= "PAUSE WITH VIDEO MUTE") then gDVDProxy:dev_Pause() end
    elseif (value == "P07") then
    elseif (value == "P08") then
    elseif (value == "P09") then
    
    end
    
    gPlayerActiveMode = gPlayerActiveModeMap[value] or "UNKNOWN"
    LogTrace("DEV_MSG.PlayerActiveMode(), Mode: " .. gPlayerActiveMode)
    
    if (gControlMethod == "Serial" and gPowerOnInProgressTimer:TimerStarted()) then
	   if (gDVDProxy._PowerState ~= "ON") then
		  DEV_MSG.ON()
	   end
    end
end

function DEV_MSG.PlayerFirmwareVersion(value)
    LogTrace("DEV_MSG.PlayerFirmwareVersion(), value = " .. value)
    UpdateProperty("Firmware Version", value)
end

function DEV_MSG.PlayerModelName(value)
    LogTrace("DEV_MSG.PlayerModelName(), value = " .. value)
    UpdateProperty("Player Name", value)
end

function DEV_MSG.KeepAlivePolling(value)
    LogTrace("DEV_MSG.KeepAlivePolling(), value = " .. value)
end end)
package.preload['device_specific_commands'] = (function (...)
--[[=============================================================================
    Copyright 2015 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.device_specific_commands = "2015.03.31"
end

--[[=============================================================================
    ExecuteCommand Code

    Define any functions for device specific commands (EX_CMD.<command>)
    received from ExecuteCommand that need to be handled by the driver.
===============================================================================]]

function EX_CMD.RemoteKey(tParams)
	LogTrace("EX_CMD.RemoteKey")
	LogTrace(tParams)
	
	-- TODO: create packet/command to send to the device
	local command = CMDS[tParams.Key]
	
	if (command == nil) then
		LogTrace("command is nil")
	else
		LogTrace("command = " .. command)
		PackAndQueueCommand("EX_CMD.RemoteKey", command)
	end	
end


 end)
package.preload['actions'] = (function (...)
--[[=============================================================================
    Lua Action Code

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.actions = "2016.01.08"
end

-- TODO: Create a function for each action defined in the driver

function LUA_ACTION.TemplateVersion()
	TemplateVersion()
end

function LUA_ACTION.GetMacAddress()
    GetMACAddress()
    GetIPAddress()
end

function GetMACAddress()
    if (LuaC4Object.GetDeviceMAC) then
	   local mac = C4:GetDeviceMAC(NETWORK_BINDING_ID) or ""
	   
	   if (mac ~= "") then
		  UpdateProperty("MAC Address", mac)
	   else
		  print("GetMacAddress failed! Device may not be addressed.")
	   end
	   
	   return mac
    else
	   print("GetMacAddress failed! C4:GetDeviceMAC is not supported.")
	   return ""
    end
    
end

function GetIPAddress()
    if (LuaC4Object.GetBindingAddress) then
	   local addr = C4:GetBindingAddress(NETWORK_BINDING_ID) or ""
	   
	   if (addr ~= "") then
		  UpdateProperty("IP Address", addr)
	   else
		  print("GetIPAddress failed! Device may not be addressed.")
	   end
	   
	   return addr
    else
	   print("GetIPAddress failed! C4:GetBindingAddress is not supported.")
	   return ""
    end

end


function LUA_ACTION.GetCurrentAddress()
    PackAndQueueCommand("GetCurrentAddress", "?A")
end

 end)
package.preload['common.c4_utils'] = (function (...)
--[[=============================================================================
    Helper functions

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_utils = "2016.01.08"
end

--[[=============================================================================
    AsciiToBCD(InString)

    Description
    Convert an ascii string to a binary coded decimal. Each decimal digit is
    stored in one byte, with the lower four bits encoding the digit in BCD form.

    Parameters
    InString(string) - Ascii string that is to be converted into bcd

    Returns
    The binary coded decimal
===============================================================================]]
function AsciiToBCD(InString)
	local WorkVal = 0
	local RetValStr = ""
	local DoingHighNybble = false
	local WorkStr = ((#InString % 2) == 0) and (InString) or ("0" .. InString)	-- make sure length is an even number

	for CharCount = 1, #WorkStr do
		local NumVal = tonumber(WorkStr:sub(CharCount, CharCount))

		WorkVal = bit.lshift(WorkVal, 4) + NumVal
		if (DoingHighNybble) then
			RetValStr = RetValStr .. string.char(WorkVal)
			WorkVal = 0
		end

		DoingHighNybble = (not DoingHighNybble)
	end

	return RetValStr
end

--[[=============================================================================
    BCDToAscii(InByte)

    Description
    Convert an BCD string to an ascii string.

    Parameters
    InByte(string) - Binary coded decimal that is to be converted into ascii

    Returns
    The ascii string
===============================================================================]]
function BCDToAscii(InByte)
	return tostring(bit.rshift(InByte, 4)) .. tostring(bit.band(InByte, 0x0F))
end

--[[=============================================================================
    MakeXMLNode(Tag, Value)

    Description
    Create an Xml element

    Parameters
    Tag(string)   - The Xml elements name
    Value(string) - The Xml elements value

    Returns
    The xml element created for the specified value
===============================================================================]]
function MakeXMLNode(Tag, Value)
	return "<" .. Tag .. ">" .. Value .. "</" .. Tag .. ">"
end

--[[=============================================================================
    MakeXMLAttrNode(Tag, Value, Attribute, AttrValue)

    Description
    Create an Xml element with an attribute

    Parameters
    Tag(string)       - The Xml elements name
    Value(string)     - The Xml elements value
    Attribute(string) - The attribute to be added to the Xml element
    AttrValue(string) - The value of the attribute to be added

    Returns
    The xml element created for the specified value
===============================================================================]]
function MakeXMLAttrNode(Tag, Value, Attribute, AttrValue)
    return "<" .. Tag .. " " .. Attribute .. "=\"" .. AttrValue .. "\">" .. Value .. "</" .. Tag .. ">"
end

--[[=============================================================================
    StringFromUnicode(UnicodeString)

    Description
    Convert a unicode string

    Parameters
    UnicodeString(string) - The unicode string to be converted to ascii

    Returns
    The ascii representation of the unicode string
===============================================================================]]
function StringFromUnicode(UnicodeString)
	local RetVal = ""

	-- extract every other byte from the unicode string
	for Index = 2, #UnicodeString, 2 do
		RetVal = RetVal .. string.sub(UnicodeString, Index, Index)
	end

	return RetVal
end

--[[=============================================================================
    StringSplit(s)

    Description
    Splits a string into multiple strings at an optionally specified delimiter
	If the delimiter is not specified, it will defalt to the space character

    Parameters
    s(string) - The string that is to be split into several strings
	d(string) - The delimiter to split the string on

    Returns
    A table of strings containing all the seperate values in the given string
===============================================================================]]
function StringSplit(s, d)
	local delim = (d ~= nil) and d or " "
	local result = {}

	if s == nil or s == "" then
		return result
	end

	for match in (s..delim):gmatch("(.-)"..delim) do
		table.insert(result, match)
	end

	return result
end

--[[=============================================================================
    toboolean(s)

    Description
    Returns a boolean representation of the given value

    Parameters
    val input value, may be of different types

    Returns
    The value true or false based on the given value
		If the value is of type string the return true if the first letter is "T" or "t" or if the string is "1"
		If the value is of type number the return true if the value is non-zero
		If the value is already a boolean, just return it.
===============================================================================]]
function toboolean(val)
	local rval = false;

	if type(val) == "string" and (string.lower(val) == 'true' or val == "1") then
		rval = true
	elseif type(val) == "number" and val ~= 0 then
		rval =  true
	elseif type(val) == "boolean" then
		rval = val
	end

	return rval
end

--[[=============================================================================
    tointeger(s)

    Description
    Force a number or a string representation of a number to be an integer

    Parameters
    val - A number or a string representation of a number

    Returns
    The the rounded off integer value.
===============================================================================]]
function tointeger(val)
	local nval = tonumber(val)
	return (nval >= 0) and math.floor(nval + 0.5) or math.ceil(nval - 0.5)
end


--[[=============================================================================
    Go(to, err, ...)

    Description
    Call a function with the given arguments if it exists or report the error

    Parameters
    to(string)  - The string to evaluate the boolean representation from
    err(string) - The error to report if the function does not exist
    ...         - Additional optional parameters for the function specified by
                  the "to" parameter

    Returns
    Nothing
===============================================================================]]
function Go(to, err, ...)
	if (type(to) == "function") then
		return to(...)
	else
		LogTrace(err)
	end
end

--[[=============================================================================
    IsEmpty(str)

    Description
    Identifies if the string given is nil or empty

    Parameters
    str(string) - The string to evaluate for the empty condition

    Returns
    True if the given value is empty, false otherwise
===============================================================================]]
function IsEmpty(str)
	return str == nil or str == ""
end

--[[=============================================================================
    ReverseTable(a)

    Description
    Reverse table entries (key=value, value=key)

    Parameters
    a(table) - The table to reverse

    Returns
    new reversed table
===============================================================================]]
function ReverseTable(a)
	local b = {}
	for k,v in pairs(a) do b[v] = k end
	return b
end

function tonumber_loc(str, base)
  local s = str:gsub(",", ".") -- Assume US Locale decimal separator
  local num = tonumber(s, base)
  if (num == nil) then
    s = str:gsub("%.", ",") -- Non-US Locale decimal separator
    num = tonumber(s, base)
  end
  return num
end

--[[=============================================================================
    HexToString(InString)

    Description
    Converts a string of Hex characters to a readable string of ASCII characters

    Parameters
    InString(string) - The string to be converted

    Returns
    A string showing the hex bytes of the InString
===============================================================================]]
function HexToString(InString)
	local RetVal = ""

	for Index = 1, #InString do
		RetVal = RetVal .. string.format("%02X ", InString:byte(Index))
	end
	return RetVal
end


--[[=============================================================================
    StringToHex(InString)

    Description
    Converts a string of ASCII characters to as string with the actual Hex bytes in them.
	Basically an array of hex bytes.

    Parameters
    InString(string) - The string to be converted

    Returns
    A string of hex bytes (really an array of hex values) 
===============================================================================]]
function StringToHex(InString)
	local RetVal = ""

	for HexByteString in string.gfind(InString, "%x%x") do
		RetVal = RetVal .. string.char(tonumber(HexByteString, 16))
	end
	return RetVal
end

function RecordHistory(severity, eventType, category, subcategory, description)
	C4:RecordHistory(severity, eventType, category, subcategory, description)
end

function RecordCriticalHistory(eventType, category, subcategory, description)
	RecordHistory("Critical", eventType, category, subcategory, description)
end

function RecordWarningHistory(eventType, category, subcategory, description)
	RecordHistory("Warning", eventType, category, subcategory, description)
end

function RecordInfoHistory(eventType, category, subcategory, description)
	RecordHistory("Info", eventType, category, subcategory, description)
end


 end)
package.preload['common.c4_ir_connection'] = (function (...)
--[[=============================================================================
    Base for an IR connection driver

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_driver_declarations"
require "common.c4_device_connection_base"
require "lib.c4_log"
require "common.c4_common"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_ir_connection = "2016.01.08"
end

IRConnectionBase = inheritsFrom(DeviceConnectionBase)

function IRConnectionBase:construct(BindingID)
	self.superClass():construct()
	self._BindingID = BindingID
end

function IRConnectionBase:Initialize(ExpectAck, DelayInterval, WaitInterval)
	print("tSerConBase:Initialize")
	gControlMethod = "IR"
	self:superClass():Initialize(ExpectAck, DelayInterval, WaitInterval, self)
end

function IRConnectionBase:ControlMethod()
	return "IR"
end

function IRConnectionBase:SendCommand(sCommand, ...)
	if(self._IsConnected) then
		local command_delay = select(1, ...)
		local delay_units = select(2, ...)
		local command_name = select(3, ...)

		C4:SendIR(self._BindingID, sCommand)
		self:StartCommandTimer(command_delay, delay_units, command_name)
	else
		LogWarn("IR connection is not bound. Command not sent.")
	end
end

function IRConnectionBase:destruct()
	self.superClass():destruct()
	self._BindingID = nil
end
 end)
package.preload['common.c4_serial_connection'] = (function (...)
--[[=============================================================================
    Base for a serial connection driver

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_driver_declarations"
require "common.c4_device_connection_base"
require "lib.c4_log"
require "common.c4_common"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_serial_connection = "2016.01.08"
end

SerialConnectionBase = inheritsFrom(DeviceConnectionBase)

function SerialConnectionBase:construct(BindingID)
	self.superClass():construct()
	self._BindingID = BindingID
end

function SerialConnectionBase:Initialize(ExpectAck, DelayInterval, WaitInterval)
	gControlMethod = "Serial"
	self:superClass():Initialize(ExpectAck, DelayInterval, WaitInterval, self)
end

function SerialConnectionBase:ControlMethod()
	return "Serial"
end

function SerialConnectionBase:SendCommand(sCommand, ...)
	if(self._IsConnected) then
		local command_delay = select(1, ...)
		local delay_units = select(2, ...)
		local command_name = select(3, ...)

		C4:SendToSerial(self._BindingID, sCommand)
		self:StartCommandTimer(command_delay, delay_units, command_name)
	else
		LogWarn("Not connected to serial. Command not sent.")
	end
end

function SerialConnectionBase:SendRaw(sData)
	C4:SendToSerial(self._BindingID, sData)
end


function SerialConnectionBase:ReceivedFromSerial(idBinding, sData)
	self:ReceivedFromCom(sData)
end

function SerialConnectionBase:destruct()
	self.superClass():destruct()
	self._BindingID = nil
end
 end)
package.preload['lib.c4_queue'] = (function (...)
--[[=============================================================================
    c4_queue Class

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_driver_declarations"
require "lib.c4_object"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_queue = "2016.01.08"
end

c4_queue = inheritsFrom(nil)

function c4_queue:construct()
	-- entry table
	self._et = {first = 0, last = -1}
	self._maxSize = 0	-- no size limit
	self._name = ""

	local mt = getmetatable(self)
	if (mt ~= nil) then
		mt.__tostring = self.__tostring
	end
end

function c4_queue:__tostring()
	local tOutputString = {}
	table.insert(tOutputString, "--- Queue ---")
	if (not IsEmpty(self._name)) then
		table.insert(tOutputString, "  name = " .. tostring(self._name))
	end
	table.insert(tOutputString, "  first = " .. tostring(self._et.first))
	table.insert(tOutputString, "  last = " .. tostring(self._et.last))
	table.insert(tOutputString, "  number in queue = " .. tostring(self._et.last - self._et.first + 1))
	table.insert(tOutputString, "  maximum size = " .. self._maxSize)
	table.insert(tOutputString, "  next value = " .. tostring(self:value()))
	return table.concat(tOutputString, "\n")
end


-- push a value on the queue
function c4_queue:push(value, ...)
	local numItems = self._et.last - self._et.first + 1

	if ((self._maxSize <= 0) or (numItems < self._maxSize) ) then
		local last = self._et.last + 1
		self._et.last = last
		
		local interval = select(1, ...)
		local units = select(2, ...)
		local command_name = select(3, ...)
		self._et[last] = {["command"] = value, ["command_delay"] = interval, ["delay_units"] = units, ["command_name"] = command_name}		
		--LogTrace ("Queue:push(), first = " .. tostring(self._et.first) .. ", last = " .. tostring(self._et.last) .. ", number in queue = " .. tostring(self._et.last - self._et.first + 1) .. ", value = " .. value)
	else
		-- if addToQueue == true then push value to queue
		if (self:OnMaxSizeReached()) then
			local last = self._et.last + 1
			self._et.last = last
			self._et[last] = {["command"] = value, ["command_delay"] = interval, ["delay_units"] = units, ["command_name"] = command_name}
			--LogTrace ("Queue:push(), first = " .. tostring(self._et.first) .. ", last = " .. tostring(self._et.last) .. ", number in queue = " .. tostring(self._et.last - self._et.first + 1) .. ", value = " .. value)
		end
	end
end

function c4_queue:OnMaxSizeReached()
	--LogTrace ("Max Size Reached - clear queue and push value to the queue (default).")
	local addToQueue = true

	self:clear()
	return (addToQueue)
end

-- pop a value from the queue
function c4_queue:pop()
	local first = self._et.first

	if first > self._et.last then
		--LogTrace("Queue:pop(), queue is empty")
		return ""
	end

	local value = self._et[first]
	self._et[first] = nil        -- to allow garbage collection
	self._et.first = first + 1
	--LogTrace ("Queue:pop(), first = " .. tostring(self._et.first) .. ", last = " .. tostring(self._et.last) .. ", number in queue = " .. tostring(self._et.last - self._et.first + 1) .. ", value = " .. value)

	return value
end

-- clear queue
function c4_queue:clear()
	local first = self._et.first

	if first > self._et.last then
		--LogTrace ("Queue:clear(), queue is empty")
		return ""
	end

	self._et = {first = 0, last = -1}
	--LogTrace ("Queue:clear(), first = " .. tostring(self._et.first) .. ", last = " .. tostring(self._et.last) .. ", number in queue = " .. tostring(self._et.last - self._et.first + 1))
	--LogTrace (self._et)
end

-- return value of first item
function c4_queue:value()
	local first = self._et.first

	if (first > self._et.last) then
		return ""
	else
		return self._et[first]
	end
end

-- return queue's maximum size
function c4_queue:MaxSize()
	return self._maxSize
end

-- return queue's maximum size
function c4_queue:SetMaxSize(size)
	self._maxSize = size
end

function c4_queue:SetName(name)
	self._name = name
end

-- return the queue's current size
function c4_queue:Size()
	return self._et.last - self._et.first + 1
end

-- is queue empty?
function c4_queue:empty()
	-- print ("self._et.first = " .. tostring(self._et.first) .. ", self._et.last = " .. tostring(self._et.last))
	if (self._et.first > self._et.last) then
		return true
	else
		return false
	end
end

--[[
    c4_queue unit tests
--]]
function __test_c4_queue()
	require "test.C4Virtual"
	require "lib.c4_log"

	local LOG = c4_log:new("test_c4_queue")
	LOG:SetLogLevel(5)
	LOG:OutputPrint(true)

	-- create an instance of the queue
	local c4Queue = c4_queue:new()

	c4Queue:SetMaxSize(3)
	assert(c4Queue:MaxSize() == 3, "_maxSize is not equal to '3' it is: " .. c4Queue:MaxSize())

	c4Queue:push("Item #1 in Queue")
	c4Queue:push("Item #2 in Queue")
	c4Queue:push("Item #3 in Queue")
	c4Queue:push("Item #4 in Queue")  -- this should cause OnMaxSizeReached() to be called and clear the queue
	assert(c4Queue:Size() == 1, "queue size is not equal to '1' it is: " .. c4Queue:Size())

	print (c4Queue)

	-- Test inheritance overriding OnMaxSizeReached
	-- Create a new class
	c4_queue_new = inheritsFrom(c4_queue)

	-- override construct()
	function c4_queue_new:construct()
		self.superClass():construct()  -- call base class
		self._maxSizeOption = 1

		local mt = getmetatable(self)
		if (mt ~= nil) then
			mt.__tostring = self.__tostring
		end
	end

	-- override OnMaxSizeReached()
	function c4_queue_new:OnMaxSizeReached()
		--Default: clear queue and push value to the queue. (No need to overload,

		-- Option 1: Do Nothing, new item is not added to queue
		if (self._maxSizeOption == 1) then
			
			LogInfo("Max Size Reached - do nothing, new item not added to queue (option 1)")
			return (false)
		-- Option 2: pop value, and push new value on queue
		elseif(self._maxSizeOption == 2) then
			LogInfo("Max Size Reached - pop value, and push new value on queue (option 2)")
			self:pop()
			return (true)
		-- Option 3: clear queue and DO NOT push new value onto queue
		elseif(self._maxSizeOption == 3) then
			LogInfo("Max Size Reached - clear queue and DO NOT push new value onto queue")
			self:clear()
			return (false)
		end
	end

	-- create an instance of the new queue
	local c4QueueNew = c4_queue_new:new()
	c4QueueNew:SetMaxSize(3)
	c4QueueNew:push("Item #1 in Queue")
	c4QueueNew:push("Item #2 in Queue")
	c4QueueNew:push("Item #3 in Queue")
	c4QueueNew:push("Item #4 in Queue")  -- this should cause OnMaxSizeReached() to be called and clear the queue
	assert(c4QueueNew:Size() == 3, "queue size is not equal to '3' it is: " .. c4QueueNew:Size())

	print(c4QueueNew)
	print ("done...")
end end)
package.preload['common.c4_device_connection_base'] = (function (...)
--[[=============================================================================
    DeviceConnectionBase Class

    Copyright 2017 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_common"
require "lib.c4_object"
require "lib.c4_log"
require "lib.c4_timer"
require "lib.c4_queue"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_device_connection_base = "2017.08.17"
end

COMMAND_QUEUE_SIZE = 2
DEFAULT_COMMAND_DELAY_INTERVAL = 650           -- Don't send consecutive commands faster than this many milliseconds
DEFAULT_COMMAND_RESPONSE_INTERVAL = 0          -- If we haven't received and ACK after this many seconds, try again
DEFAULT_RETRY_COUNT_MAX = 0

function ON_DRIVER_EARLY_INIT.c4_device_connection_base()
	gReceiveBuffer = ""
	gIsUrlConnected = false
	gIsNetworkServerConnected = false
	gIsNetworkConnected = false
	gIsSerialConnected = false
	gIsIRConnected = false
end

DeviceConnectionBase = inheritsFrom(nil)

function DeviceConnectionBase:construct()

	self._IsConnected = false
	self._SendTimer = nil
	self._WaitResponseTimer = nil
	self._CommandQueue = nil
	self._Priority1CommandQueue = nil
	self._Priority2CommandQueue = nil
	self._LastCommand = nil
	self._ExpectAck = false
	self._CommandRetryCount = 0
	self._RetryCountMax = DEFAULT_RETRY_COUNT_MAX

	self._SendCommandDelayMS = DEFAULT_COMMAND_DELAY_INTERVAL
	self._CommandResponseWaitS = DEFAULT_COMMAND_RESPONSE_INTERVAL
	
	self._UseRetry = true
	
	-- Polling
	self._PollingInterval = 0
	self._PollingUnits = "SECONDS"
	self._PollingTimer = nil
end

function DeviceConnectionBase:deconstruct()

	if (self._CommandQueue ~= nil) then
		self._CommandQueue:clear()
		self._CommandQueue = nil
	end

	if (self._Priority1CommandQueue ~= nil) then
		self._Priority1CommandQueue:clear()
		self._Priority1CommandQueue = nil
	end

	if (self._Priority2CommandQueue ~= nil) then
		self._Priority2CommandQueue:clear()
		self._Priority2CommandQueue = nil
	end

	if (self._SendTimer ~= nil) then
		self._SendTimer:KillTimer()
		self._SendTimer = nil
	end

	if (self._WaitResponseTimer ~= nil) then
		self._WaitResponseTimer:KillTimer()
		self._WaitResponseTimer = nil
	end
end

function DeviceConnectionBase:Initialize(ExpectAck, CommandDelayInterval, CommandResponseInterval, CallbackParam)

	if (ExpectAck ~= nil) then
		self._ExpectAck = ExpectAck
	end

	if (CommandDelayInterval ~= nil) then
		self._SendCommandDelayMS = CommandDelayInterval
	end

	if (CommandResponseInterval ~= nil) then
		self._CommandResponseWaitS = CommandResponseInterval
	end

	self._CommandQueue = c4_queue:new()
	self._CommandQueue:SetMaxSize(COMMAND_QUEUE_SIZE)
	self._CommandQueue:SetName("Command Queue")

	self._Priority1CommandQueue = c4_queue:new()
	self._Priority1CommandQueue:SetMaxSize(COMMAND_QUEUE_SIZE)
	self._Priority1CommandQueue:SetName("P1 Queue")

	self._Priority2CommandQueue = c4_queue:new()
	self._Priority2CommandQueue:SetMaxSize(COMMAND_QUEUE_SIZE)
	self._Priority2CommandQueue:SetName("P2 Queue")

	-- usually only one of these timers will be used, but it's pretty low overhead to instantiate both of them
	self._SendTimer = c4_timer:new("SendCommand", self._SendCommandDelayMS, "MILLISECONDS", DeviceConnectionBase.OnSendTimeExpired, false, CallbackParam)
	self._WaitResponseTimer = c4_timer:new("WaitResponse", self._CommandResponseWaitS, "SECONDS", DeviceConnectionBase.OnWaitTimeExpired, false, CallbackParam)
end

function DeviceConnectionBase:InitPolling(PollingInterval, PollingUnits, CallbackParam)
	LogFatal("DeviceConnectionBase:InitPolling()")
	if (PollingInterval ~= nil) then
		self._PollingInterval = PollingInterval
	end
	
	self._PollingUnits = PollingUnits or self._PollingUnits

	LogFatal("self._PollingInterval: %s, self._PollingUnits: %s", tostring(self._PollingInterval), tostring(self._PollingUnits))
	
	-- create polling timer
	self._PollingTimer = c4_timer:new("Polling", self._PollingInterval, self._PollingUnits, DeviceConnectionBase.OnPollingTimerExpired, false, CallbackParam)
end

function DeviceConnectionBase:StartPolling(interval, units)
	LogFatal("DeviceConnectionBase:StartPolling()")
	LogFatal("self._PollingTimer: %s", tostring(self._PollingTimer))
	
	if (self._PollingTimer ~= nil) then
		self._PollingTimer:KillTimer()
		
		local timer_units = units or self._PollingTimer._units
		local timer_interval = interval or self._PollingInterval

		self._PollingTimer:StartTimer(timer_interval, timer_units)
	end
end

function DeviceConnectionBase:StopPolling()
	LogFatal("DeviceConnectionBase:StopPolling()")
	self._PollingTimer:KillTimer()
end

function DeviceConnectionBase:SetExpectACK(ExpectACK)
	self._ExpectAck = ExpectACK
end

function DeviceConnectionBase:SetCommandDelayInterval(DelayInterval)
	self._SendCommandDelayMS = DelayInterval
end

function DeviceConnectionBase:SetResponseWaitInterval(WaitInterval)
	self._CommandResponseWaitS = WaitInterval
end

function DeviceConnectionBase:ReceivedFromCom(sData)

	gReceiveBuffer = gReceiveBuffer .. sData
	LogTrace("ReceivedFromCom  ReceiveBuffer is now {{{%s}}}", gReceiveBuffer)

	message = self:GetMessage()
	while (message ~= nil and message ~= "") do
		status, err = pcall(HandleMessage, message)
		if (status) then
			message = self:GetMessage()
		else
			LogError("LUA_ERROR: " .. err)
			message = ""
			gReceiveBuffer = ""
		end
	end
end

function DeviceConnectionBase:SetConnection(IsConnected, method)
	self._IsConnected = IsConnected
	gControlMethod = method
end

function DeviceConnectionBase:SetUseRetry(UseRetry)
	self._UseRetry = UseRetry
end

function DeviceConnectionBase:ControlMethod()
	-- Override in derived class
	print("WARNING: Need to override ControlMethod - should never be called")
	
	return ""
end

function DeviceConnectionBase:StartCommandTimer(...)
	local value = select(1, ...)
	local units = select(2, ...)
	local command_name = select(3, ...) or ""

	self._WaitResponseTimer:KillTimer()
	self._SendTimer:KillTimer()

	if (self._ExpectAck) then
		-- expecting an ACK set the Response Wait timer
		local timer_units = units or self._WaitResponseTimer._units
		local timer_interval = value or self._CommandResponseWaitS

		self._WaitResponseTimer:StartTimer(timer_interval, timer_units)
		LogTrace(string.format("Starting wait Timer:  %d", self._WaitResponseTimer._timerID) .. " for " .. command_name)
	else
		-- no ACK expected, just wait the designated amount of time and send another command
		local timer_units = units or self._SendTimer._units
		local timer_interval = value or self._SendCommandDelayMS

		self._SendTimer:StartTimer(timer_interval, timer_units)
		LogTrace(string.format("Starting Send Timer:  %d for %s (timer_interval = %d, timer_units = %s)", self._SendTimer._timerID, command_name, timer_interval, timer_units))
	end
end

-- Note the '.' instead of the ':'
function DeviceConnectionBase.OnSendTimeExpired(Instance)
	LogTrace("Send Timer expired")
	Instance._SendTimer:KillTimer()

	local tCommand = Instance._LastCommand
	if (tCommand ~= nil) then
		if (tCommand.command_name ~= nil) then
			LogTrace("Send Timer expired - Last Command: %s, Send Next Command", tostring(tCommand.command_name))
		elseif (type(tCommand) == "string") then
			LogTrace("Send Timer expired - Last Command: %s, Send Next Command", tostring(tCommand))
		end
	else
		LogTrace("Send Timer expired - Last Command: UNKNOWN, Send Next Command")
	end
	
	Instance._LastCommand = nil
	Instance:SendNextCommand()

	if (DoEvents ~= nil and type(DoEvents) == "function") then
		DoEvents()
	end
end

function DeviceConnectionBase.OnWaitTimeExpired(Instance)
	LogTrace("Wait Timer expired")
	Instance._WaitResponseTimer:KillTimer()
	Instance._CommandRetryCount = Instance._CommandRetryCount + 1

	if (Instance._UseRetry) then

		if (Instance._CommandRetryCount >= Instance._RetryCountMax) then
			-- To many retries, pop the current command and try the next one
			Instance._CommandRetryCount = 0
			Instance._LastCommand = nil
			Instance:SendNextCommand()
		else
			Instance:SendLastCommand()
		end
	else
		--If a response is not received from the device, the queue may stall,
		--so resending the last command will not remedy the situation.
		--Use this option to advance the queue and not use retry counter.
		gCon:HandleACK()
	end
end

function DeviceConnectionBase.OnPollingTimerExpired(Instance)
	LogTrace("Polling Timer expired")
	Instance._PollingTimer:KillTimer()

	OnPollingTimerExpired()
	
	Instance._PollingTimer:StartTimer(Instance._PollingInterval)
end

function DeviceConnectionBase:HandleACK()
	self._LastCommand = nil

	self._WaitResponseTimer:KillTimer()
	self._CommandRetryCount = 0
	self:SendNextCommand()

     if (DoEvents ~= nil and type(DoEvents) == "function") then
	   DoEvents()
     end

end

function DeviceConnectionBase:QueueEmpty()
	return (self._CommandQueue:empty() and self._Priority1CommandQueue:empty() and self._Priority2CommandQueue:empty())
end

function DeviceConnectionBase:QueueCommand(sCommand, ...)
	LogTrace("QueueCommand(%s)", sCommand)
	local command_delay = select(1, ...)
	local delay_units = select(2, ...)
	local command_name = select(3, ...)

	if (sCommand == nil) or (sCommand == "") then
		return
	end

	if (self._LastCommand == nil) then
		self._CommandQueue:push(sCommand, command_delay, delay_units, command_name)
		self._LastCommand = self._CommandQueue:pop()
		self:SendCommand(sCommand, command_delay, delay_units, command_name)
	else
		self._CommandQueue:push(sCommand, command_delay, delay_units, command_name)
	end
end

function DeviceConnectionBase:QueuePriority1Command(sCommand, ...)
	LogTrace("QueuePriority1Command(%s)", sCommand)
	local command_delay = select(1, ...)
	local delay_units = select(2, ...)
	local command_name = select(3, ...)

	if (sCommand == nil) or (sCommand == "") then
		return
	end

	if (self._LastCommand == nil) then
		self._Priority1CommandQueue:push(sCommand, command_delay, delay_units, command_name)
		self._LastCommand = self._Priority1CommandQueue:pop()
		self:SendCommand(sCommand, command_delay, delay_units, command_name)
	else
		self._Priority1CommandQueue:push(sCommand, command_delay, delay_units, command_name)
	end
end

function DeviceConnectionBase:QueuePriority2Command(sCommand, ...)
	LogTrace("QueuePriority2Command(%s)", sCommand)
	local command_delay = select(1, ...)
	local delay_units = select(2, ...)
	local command_name = select(3, ...)

	if (sCommand == nil) or (sCommand == "") then
		return
	end

	if (self._LastCommand == nil) then
		self._Priority2CommandQueue:push(sCommand, command_delay, delay_units, command_name)
		self._LastCommand = self._Priority2CommandQueue:pop()
		self:SendCommand(sCommand, command_delay, delay_units, command_name)
	else
		self._Priority2CommandQueue:push(sCommand, command_delay, delay_units, command_name)
	end
end

function DeviceConnectionBase:SendNextCommand()
	LogTrace("DeviceConnectionBase:SendNextCommand")

	local tCommand = nil
	if (not self._Priority1CommandQueue:empty()) then
		tCommand = self._Priority1CommandQueue:pop()
		LogTrace(tostring(gCon._Priority1CommandQueue))
	elseif (not self._Priority2CommandQueue:empty()) then
		tCommand = self._Priority2CommandQueue:pop()
		LogTrace(tostring(gCon._Priority2CommandQueue))
	elseif (not self._CommandQueue:empty()) then
		tCommand = self._CommandQueue:pop()
		LogTrace(tostring(gCon._CommandQueue))
	end
	
	if (tCommand ~= nil) then
		self._LastCommand = tCommand
		local sCommand = tCommand.command
		local command_delay = tCommand.command_delay
		local delay_units = tCommand.delay_units
		local command_name = tCommand.command_name

		if (sCommand == nil or sCommand == "") then
			self._SendTimer:KillTimer()
			self._WaitResponseTimer:KillTimer()
		else
			LogTrace("SendCommand: %s", sCommand)
			self:SendCommand(sCommand, command_delay, delay_units, command_name)
		end
	end
end

function DeviceConnectionBase:SendLastCommand()
--	LogTrace("DeviceConnectionBase:SendLastCommand")

	local tCommand = self._LastCommand
	if (tCommand ~= nil) then
		local sCommand = tCommand.command
		local command_delay = tCommand.command_delay
		local delay_units = tCommand.delay_units
		local command_name = tCommand.command_name

		if (sCommand == nil or sCommand == "") then
			self._SendTimer:KillTimer()
			self._WaitResponseTimer:KillTimer()
		else
			LogTrace("SendCommand: %s", sCommand)
			self:SendCommand(sCommand, command_delay, delay_units, command_name)
		end
	end
end

function DeviceConnectionBase:SendCommand()
	-- Dummy routine.  Override in derived class
	print("Need to override SendCommand - should never be called")
end


function DeviceConnectionBase:GetMessage()
	
	-- Brain dead version of this routine. Just return the current receive buffer.
	-- It's very likely that a GetMessage() function will need to be created
	if (GetMessage ~= nil and type(GetMessage) == "function") then
		return GetMessage()
	else
		local ComMessage = gReceiveBuffer
		gReceiveBuffer = ""

		return ComMessage
	end
end

--[[=============================================================================
    Other Connection Functions
===============================================================================]]

function ReceivedFromSerial(idBinding, sData)
	if (gCon.ReceivedFromSerial == nil) then return end --serial is bound but not the current control method
	gCon:ReceivedFromSerial(idBinding, sData)
end

function ReceivedFromNetwork(idBinding, nPort, sData)
	gCon:ReceivedFromNetwork(idBinding, nPort, sData)
end

function OnServerDataIn(nHandle, strData)
--	LogTrace("Received Data on Handle: " .. nHandle .. ": " .. strData)
--	LogTrace("Data Is: %s", HexToString(strData))
	gCon:ReceivedFromNetworkServer(nHandle, strData)
end


--[[=============================================================================
    The ReceivedAsync function is called in response to 'url_get_request'. 
    The ticketId is the number returned from the request.
===============================================================================]]
function ReceivedAsync(ticketId, strData, responseCode, tHeaders)
	strData = strData or ""
	responseCode = responseCode or 0
	tHeaders = tHeaders or {}

	--LogTrace("ReceivedAsync[" .. ticketId .. "]: Response Code: " .. responseCode .. " Length: " .. string.len(strData))
	--LogTrace(tHeaders)

	--gCon:ReceivedAsync(ticketId, strData, responseCode, tHeaders)
	
	if (gCon ~= nil) then
	   gCon._LastCheckin = 0
     end
	
	LogDebug("ReceivedAsync[" .. ticketId .. "]: Response Code: " .. responseCode .. " Length: " .. string.len(strData))
	LogDebug(tHeaders)
	local tMessage = {
		["ticketId"] = ticketId,
		["sData"] = strData,
		["responseCode"] = responseCode,
		["tHeaders"] = tHeaders
	}
	
	status, err = pcall(HandleMessage, tMessage)
	if (not status) then
		LogError("LUA_ERROR: " .. err)
	end
end
	
--[[=============================================================================
    OnBindingChanged(idBinding, class, bIsBound)
  
    Description:
    Function called by Director when a binding changes state(bound or unbound).
  
    Parameters:
    idBinding(int) - ID of the binding whose state has changed.
    class(string)  - Class of binding that has changed.
                     A single binding can have multiple classes(i.e. COMPONENT,
                     STEREO, RS_232, etc).
                     This indicates which has been bound or unbound.
    bIsBound(bool) - Whether the binding has been bound or unbound.
  
    Returns:
    None
===============================================================================]]
function OnBindingChanged(idBinding, class, bIsBound)
	
	LogTrace("OnBindingChanged(): idBinding = " .. tostring(idBinding) .. ", class = " .. class .. ", bIsBound = " .. tostring(bIsBound))
	if (idBinding == SERIAL_BINDING_ID) then
		gIsSerialConnected = bIsBound
		SetControlMethod()
		OnSerialConnectionChanged(idBinding, class, bIsBound)
	elseif (idBinding == IR_BINDING_ID) then
		gIsIRConnected = bIsBound
		SetControlMethod()
		OnIRConnectionChanged(idBinding, class, bIsBound)
	elseif(OnConnectionChanged ~= nil and type(OnConnectionChanged) == "function") then
		OnConnectionChanged(idBinding, class, bIsBound)
	end
end

--[[=============================================================================
    OnNetworkBindingChanged(idBinding, bIsBound)
  
    Description:
    Function called by Director when a network binding changes state(bound or unbound).
  
    Parameters:
    idBinding(int) - ID of the binding whose state has changed.
    bIsBound(bool) - Whether the binding has been bound or unbound.
  
    Returns:
    None
===============================================================================]]
function OnNetworkBindingChanged(idBinding, bIsBound)
	LogTrace('OnNetworkBindingChanged(): idBinding = ' .. tostring(idBinding) .. ' bIsBound = ' .. tostring(bIsBound))

	gIsNetworkConnected = bIsBound
	SetControlMethod()
	OnNetworkConnectionChanged(idBinding, bIsBound)
	if (bIsBound) then
		-- Start a special instance of reconnect timer to eventually do NetConnect if not done automatically
		--gCon._NetworkReconnectTimer:StartTimer(gNetworkReconnectInterval) 	
	end	
end

--[[=============================================================================
    OnConnectionStatusChanged(idBinding, nPort, sStatus)
  
    Description:
    Sets the updated status of the specified binding
  
    Parameters:
    idBinding(int)  - ID of the binding whose status has changed
    nPort(int)      - The communication port of the specified bindings connection
    sStatus(string) - "ONLINE" if the connection status is to be set to Online,
                      any other value will set the status to Offline
  
    Returns:
    None
===============================================================================]]
function OnConnectionStatusChanged(idBinding, nPort, sStatus)
	LogTrace("OnConnectionStatusChanged[" .. idBinding .. " (" .. tostring(nPort) .. ")]: " .. sStatus)

	local isOnline = false

	gNetworkStatus = sStatus	
	if (sStatus == "ONLINE") then
		isOnline = true
	end

	if (gCon ~= nil ) then
		gCon:SetOnlineStatus(isOnline)
	end
	OnNetworkStatusChanged(idBinding, nPort, sStatus)
end

--[[=============================================================================
    SetControlMethod()
  
    Description:
    Sets the control method type for the drivers internal infrastructure
  
    Parameters:
    None
  
    Returns:
    The type of control method for the drivers connection(i.e. Network, Serial,
    IR, or (none))
===============================================================================]]
function SetControlMethod()
	if (gCon ~= nil) then
		gCon:deconstruct()
		gCon = nil
	end

	if (gIsNetworkServerConnected) then
		-- connect to NetworkServer communicator if not already connected
		if (gCon == nil or gCon.ControlMethod() ~= "NetworkServer") then
			gCon = NetworkServerConnectionBase:new()
			gCon:Initialize()
		end
		gCon:SetConnection(true, "NetworkServer")
	elseif (gIsNetworkConnected) then
		-- connect to Network communicator if not already connected
		if (gCon == nil or gCon.ControlMethod() ~= "Network") then
			gCon = NetworkConnectionBase:new(NETWORK_BINDING_ID, NETWORK_PORT)
			gCon:Initialize(COM_USE_ACK, COM_COMMAND_DELAY_MILLISECONDS, COM_COMMAND_RESPONSE_TIMEOUT_SECONDS)
		end
		gCon:SetConnection(true, "Network")
	elseif (gIsUrlConnected) then
		-- connect to URL communicator if not already connected
		if (gCon == nil or gCon.ControlMethod() ~= "URL") then
			gCon = UrlConnectionBase:new()
			gCon:Initialize(COM_USE_ACK, COM_COMMAND_DELAY_MILLISECONDS, COM_COMMAND_RESPONSE_TIMEOUT_SECONDS)
		end
		gCon:SetConnection(true, "URL")
	elseif (gIsSerialConnected) then
		-- connect to Serial communicator if not already connected
		if (gCon == nil or gCon.ControlMethod() ~= "Serial") then
			gCon = SerialConnectionBase:new(SERIAL_BINDING_ID)
			gCon:Initialize(COM_USE_ACK, COM_COMMAND_DELAY_MILLISECONDS, COM_COMMAND_RESPONSE_TIMEOUT_SECONDS)
			gCon:InitPolling(tonumber(gPollingTimerInterval), "MINUTES", gCon)
		end
		gCon:SetConnection(true, "Serial")
	elseif (gIsIRConnected) then
		-- connect to IR communicator if not already connected
		if (gCon == nil or gCon.ControlMethod() ~= "IR") then
			gCon = IRConnectionBase:new(IR_BINDING_ID)
			gCon:Initialize(COM_USE_ACK, COM_COMMAND_DELAY_MILLISECONDS, COM_COMMAND_RESPONSE_TIMEOUT_SECONDS)
		end
		gCon:SetConnection(true, "IR")
	else
		if (gCon ~= nil) then
			gCon:SetConnection(false, "(none)")
		end
	end
end

--[[=============================================================================
    ValidateControlMethod(controlMethod)
  
    Description:
    Identifies whether the specified control method has a valid connection
  
    Parameters:
    controlMethod(string) - The communication we are validating against
                            Valid types are (Network, Serial, and IR)
  
    Returns:
    true if the controlMethod specified has been connected, false otherwise.
===============================================================================]]
function ValidateControlMethod(controlMethod)
	local isValid = false

	if (controlMethod == "Network") and (gIsNetworkConnected) then
		isValid = true
	elseif (controlMethod == "URL") and (gIsUrlConnected) then
		isValid = true
	elseif (controlMethod == "Serial") and (gIsSerialConnected) then
		isValid = true
	elseif (controlMethod == "IR") and (gIsIRConnected) then
		isValid = true
	end

	return isValid
end
 end)
package.preload['common.c4_network_connection'] = (function (...)
--[[=============================================================================
    Base for a network connection driver

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_device_connection_base"
require "lib.c4_log"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_network_connection = "2016.01.08"
end

DEFAULT_POLLING_INTERVAL_SECONDS = 30
DEFAULT_RECONNECT_INTERVAL_SECONDS = 5

gNetworkKeepAliveInterval = DEFAULT_POLLING_INTERVAL_SECONDS
gNetworkReconnectInterval = DEFAULT_RECONNECT_INTERVAL_SECONDS

NetworkConnectionBase = inheritsFrom(DeviceConnectionBase)

function NetworkConnectionBase:construct(BindingID, Port)
	self.superClass():construct()

	self._BindingID = BindingID
	self._Port = Port
	self._LastCheckin = 0
	self._IsOnline = false
	self._KeepAliveTimer = nil
end

function NetworkConnectionBase:Initialize(ExpectAck, DelayInterval, WaitInterval)
	print("NetConBase:Initialize")
	gControlMethod = "Network"
	self:superClass():Initialize(ExpectAck, DelayInterval, WaitInterval, self)
	self._KeepAliveTimer = c4_timer:new("PollingTimer", gNetworkKeepAliveInterval, "SECONDS", NetworkConnectionBase.OnKeepAliveTimerExpired, false, self)
	self._NetworkReconnectTimer = c4_timer:new("NetworkReconnectTimer", gNetworkReconnectInterval, "SECONDS", NetworkConnectionBase.OnNetworkReconnectTimerExpired, false, self)
end

function NetworkConnectionBase:ControlMethod()
	return "Network"
end

function NetworkConnectionBase:SendCommand(sCommand, ...)
    LogTrace("NetworkConnectionBase:SendCommand(" .. tostring(sCommand) .. ")")
	if(self._IsConnected) then
		if(self._IsOnline) then
			local command_delay = select(1, ...)
			local delay_units = select(2, ...)
			local command_name = select(3, ...)

			C4:SendToNetwork(self._BindingID, self._Port, sCommand)
			self:StartCommandTimer(command_delay, delay_units, command_name)
		else
			self:CheckNetworkConnectionStatus()
		end
	else
		LogWarn("Not connected to network. Command not sent.")
	end
end

function NetworkConnectionBase:ReceivedFromNetwork(idBinding, nPort, sData)
	self._LastCheckin = 0
	self:ReceivedFromCom(sData)
end

function NetworkConnectionBase:CheckNetworkConnectionStatus()
	if (self._IsConnected and (not self._IsOnline)) then
		LogWarn("Network status is OFFLINE. Trying to reconnect to the device's Control port...")
		C4:NetDisconnect(self._BindingID, self._Port)
		--C4:NetConnect(self._BindingID, self._Port)
		self._NetworkReconnectTimer:StartTimer(gNetworkReconnectInterval)
	end
end

function NetworkConnectionBase.OnKeepAliveTimerExpired(Instance)
	Instance._LastCheckin = Instance._LastCheckin + 1

	if(Instance._LastCheckin == 3) then
		LogWarn("Failed to receive poll responses... initiating network recovery mode...")
		C4:NetDisconnect(Instance._BindingID, Instance._Port)
		Instance._NetworkReconnectTimer:StartTimer(gNetworkReconnectInterval)
		return
	elseif(Instance._LastCheckin > 4) then	
		Instance._LastCheckin = 4
	end

	if (SendKeepAlivePollingCommand ~= nil and type(SendKeepAlivePollingCommand) == "function" and Instance._IsOnline) then
		SendKeepAlivePollingCommand()
	end

	Instance._KeepAliveTimer:StartTimer(gNetworkKeepAliveInterval)
end

function NetworkConnectionBase.OnNetworkReconnectTimerExpired(Instance)
     --PC added Instance._IsOnline test to stop reconnect when DVD is OFF
	--if (Instance._IsConnected and gDVDProxy._PowerState ~= "OFF") then
	if (Instance._IsConnected) then
		LogWarn("OnNetworkReconnectTimerExpired: Attempting to reactivate network connection...")
		C4:NetDisconnect(Instance._BindingID, Instance._Port)
		C4:NetConnect(Instance._BindingID, Instance._Port)
		Instance._NetworkReconnectTimer:StartTimer(gNetworkReconnectInterval)
	else
		LogWarn("Cannot attempt to reactivate, the network connection is not bound or the unit is powered off.")
	end
end

function NetworkConnectionBase:SetOnlineStatus(IsOnline)
	self._IsOnline = IsOnline

	if(IsOnline) then
		self._KeepAliveTimer:StartTimer(gNetworkKeepAliveInterval)
		self._NetworkReconnectTimer:KillTimer()
		self._LastCheckin = 0
		if (UpdateProperty ~= nil and type(UpdateProperty) == "function") then
			UpdateProperty("Connected To Network", "true")
		end

	     --if WaitTimer is not running then a command may be stuck in the queue, send it again
	     if (self._WaitResponseTimer:TimerStarted() == false and self._SendTimer:TimerStarted() == false) then 
		    self:SendLastCommand() 
	     else
		    self:SendNextCommand()
	     end
	else
		self._KeepAliveTimer:KillTimer()
		self._NetworkReconnectTimer:StartTimer(gNetworkReconnectInterval)
		if (UpdateProperty ~= nil and type(UpdateProperty) == "function") then
			UpdateProperty("Connected To Network", "false")
		end
	end
end

function ON_DRIVER_LATEINIT.c4_network_connection()
	-- Ensure existing connection is taken into consideration (useful on Driver Update)
	if (gIsNetworkConnected) then
		if (gCon ~= nil and gCon._BindingID ~= nil) then
			local tmp = C4:GetBindingAddress(gCon._BindingID)
			if (tmp ~= nil and string.len(tmp) > 0) then 
				OnNetworkBindingChanged(gCon._BindingID, true) 
			end
		end
	end
end

--Class Modification to handle both Network & URL connections
function NetworkConnectionBase:SendCommandUrl(sCommand, url, sHeader, ignoreConnect)
	ignoreConnect = ignoreConnect or false

	local ticketId
	if(self._IsConnected or ignoreConnect) then
		if (sHeader ~= nil) then
			ticketId = C4:urlPost(url, sCommand, sHeader)
		else
			ticketId = C4:urlPost(url, sCommand)
		end
	else
		LogWarn("Not connected. Command not sent.")
	end
	
	return ticketId
end

function NetworkConnectionBase:ReceivedAsync(ticketId, sData, responseCode, tHeaders)
     self._LastCheckin = 0
	
	LogDebug("ReceivedAsync[" .. ticketId .. "]: Response Code: " .. responseCode .. " Length: " .. string.len(sData))
	LogDebug(tHeaders)
	local tMessage = {
		["ticketId"] = ticketId,
		["sData"] = sData,
		["responseCode"] = responseCode,
		["tHeaders"] = tHeaders
	}
	
	status, err = pcall(HandleMessage, tMessage)
	if (not status) then
		LogError("LUA_ERROR: " .. err)
	end
end

function NetworkConnectionBase:destruct()
    self.superClass():destruct()
    
    self._BindingID = nil
    self._Port = nil
    self._LastCheckin = nil
  
    if (self._KeepAliveTimer ~= nil) then 
	   self._KeepAliveTimer:destruct()
    end
    
    if (self._NetworkReconnectTimer ~= nil) then 
	   self._NetworkReconnectTimer:destruct()
    end

    if (self._PollingTimer ~= nil) then 
	   self._PollingTimer:destruct()
    end
    
    gTicketIdMap = {}
    
end
 end)
package.preload['common.c4_notify'] = (function (...)
--[[=============================================================================
    Notification Functions

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_driver_declarations"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_notify = "2016.01.08"
end

--[[=============================================================================
    SendNotify(notifyText, tParams, bindingID)

    Description
    Forwards a notification to the proxy with a list of parameters

    Parameters
    notifyText(string) - The function identifier for the proxy
    tParams(table)     - Table of key value pairs that hold the the parameters
                         and their values used in the proxy function
    bindingID(int)     - The requests binding id

    Returns
    Nothing
===============================================================================]]
function SendNotify(notifyText, tParams, bindingID)
	C4:SendToProxy(bindingID, notifyText, tParams, "NOTIFY")
end

--[[=============================================================================
    SendSimpleNotify(notifyText, ...)

    Description
    Forwards a notification to the proxy with no parameters

    Parameters
    notifyText(string) - The function identifier for the proxy
    bindingID(int)     - Optional parameter containing the requests binding id,
                         if not specified then the DEFAULT_PROXY_ID is given.

    Returns
    Nothing
===============================================================================]]
function SendSimpleNotify(notifyText, ...)
	bindingID = select(1, ...) or DEFAULT_PROXY_BINDINGID
	C4:SendToProxy(bindingID, notifyText, {}, "NOTIFY")
end end)
package.preload['common.c4_command'] = (function (...)
--[[=============================================================================
    Functions for handling and executing commands and actions

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_driver_declarations"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_command = "2016.01.08"
end

--[[=============================================================================
    ExecuteCommand(sCommand, tParams)

    Description
    Function called by Director when a command is received for this DriverWorks
    driver. This includes commands created in Composer programming.

    Parameters
    sCommand(string) - Command to be sent
    tParams(table)   - Lua table of parameters for the sent command

    Returns
    Nothing
===============================================================================]]
function ExecuteCommand(sCommand, tParams)
	LogTrace("ExecuteCommand(" .. sCommand .. ")")
	LogInfo(tParams)

	-- Remove any spaces (trim the command)
	local trimmedCommand = string.gsub(sCommand, " ", "")
	local status, ret

	-- if function exists then execute (non-stripped)
	if (EX_CMD[sCommand] ~= nil and type(EX_CMD[sCommand]) == "function") then
		status, ret = pcall(EX_CMD[sCommand], tParams)
	-- elseif trimmed function exists then execute
	elseif (EX_CMD[trimmedCommand] ~= nil and type(EX_CMD[trimmedCommand]) == "function") then
		status, ret = pcall(EX_CMD[trimmedCommand], tParams)
	elseif (EX_CMD[sCommand] ~= nil) then
		QueueCommand(EX_CMD[sCommand])
		status = true
	else
		LogInfo("ExecuteCommand: Unhandled command = " .. sCommand)
		status = true
	end
	
	if (not status) then
		LogError("LUA_ERROR: " .. ret)
	end
	
	return ret -- Return whatever the function returns because it might be xml, a return code, and so on
end

--[[=============================================================================
    EX_CMD.LUA_ACTION(tParams)

    Description
    Function called for any actions executed by the user from the Actions Tab
    in Composer.

    Parameters
    tParams(table) - Lua table of parameters for the command option

    Returns
    Nothing
===============================================================================]]
function EX_CMD.LUA_ACTION(tParams)
	if (tParams ~= nil) then
		for cmd, cmdv in pairs(tParams) do
			if (cmd == "ACTION" and cmdv ~= nil) then
				local status, err = pcall(LUA_ACTION[cmdv], tParams)
				if (not status) then
					LogError("LUA_ERROR: " .. err)
				end
				break
			end
		end
	end
end

--[[=============================================================================
    ReceivedFromProxy(idBinding, sCommand, tParams)

    Description
    Function called for any actions executed by the user from the Actions Tab
    in Composer.

    Parameters
    idBinding(int)   - Binding ID of the proxy that sent a BindMessage to the
                       DriverWorks driver.
    sCommand(string) - Command that was sent
    tParams(table)   - Lua table of received command parameters

    Returns
    Nothing
===============================================================================]]
function ReceivedFromProxy(idBinding, sCommand, tParams)

	if (sCommand ~= nil) then

		-- initial table variable if nil
		if (tParams == nil) then
			tParams = {}
		end
		
		LogTrace("ReceivedFromProxy(): " .. sCommand .. " on binding " .. idBinding .. "; Call Function PRX_CMD." .. sCommand .. "()")
		LogInfo(tParams)
		
	     if (idBinding == SWITCHER_PROXY and sCommand == 'PASSTHROUGH') then
		  idBinding = PASSTHROUGH_PROXY
		  sCommand = tParams.PASSTHROUGH_COMMAND
	     end

		if ((PRX_CMD[sCommand]) ~= nil) then
			local status, err = pcall(PRX_CMD[sCommand], idBinding, tParams)
			if (not status) then
				LogError("LUA_ERROR: " .. err)
			end
	     elseif (sCommand == 'DO_CLICK' or sCommand == 'DO_PUSH' or sCommand == 'DO_RELEASE') then
		  --BUTTON_LINK commands..
		  if (Buttons [idBinding] [sCommand]) then
			ReceivedFromProxy (5001, Buttons [idBinding] [sCommand], {})
		  else
			 LogInfo("Botton Link: " .. sCommand .. " on binding " .. idBinding .. " not mapped.")
		  end
		else
			LogInfo("ReceivedFromProxy: Unhandled command = " .. sCommand)
		end
		
     end
end

--[[
	This function is called when a UI (Navigator) requests data, and
	calls the function requested.
--]]
function UIRequest(sRequest, tParams)
	local ret = ""

	if (sRequest ~= nil) then
		tParams = tParams or {}   -- initial table variable if nil
		LogTrace("UIRequest(): " .. sRequest .. "; Call Function UI_REQ." .. sRequest .. "()")
		LogInfo(tParams)

		if (UI_REQ[sRequest]) ~= nil then
			ret = UI_REQ[sRequest](tParams)
		else
			LogWarn("UIRequest: Unhandled request = " .. sRequest)
		end
	end

	return ret
end
 end)
package.preload['common.c4_property'] = (function (...)
--[[=============================================================================
    Function for changing properties

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_driver_declarations"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_property = "2016.01.08"
end

--[[=============================================================================
    OnPropertyChanged(sProperty)

    Description
    Function called by Director when a property changes value. The value of the
    property that has changed can be found with: Properties[sName]. Note that
    OnPropertyChanged is not called when the Property has been changed by the
    driver calling the UpdateProperty command, only when the Property is changed
    by the user from the Properties Page. This function is called by Director
    when a property changes value.

    Parameters
    sProperty(string) - Name of property that has changed.

    Returns
    Nothing
===============================================================================]]
function OnPropertyChanged(sProperty)
	local propertyValue = Properties[sProperty]

	if (LOG ~= nil and type(LOG) == "table") then
		LogTrace("OnPropertyChanged(" .. sProperty .. ") changed to: " .. Properties[sProperty])
	end

	-- Remove any spaces (trim the property)
	local trimmedProperty = string.gsub(sProperty, " ", "")
	local status = true
	local err = ""

	if (ON_PROPERTY_CHANGED[sProperty] ~= nil and type(ON_PROPERTY_CHANGED[sProperty]) == "function") then
		status, err = pcall(ON_PROPERTY_CHANGED[sProperty], propertyValue)
	elseif (ON_PROPERTY_CHANGED[trimmedProperty] ~= nil and type(ON_PROPERTY_CHANGED[trimmedProperty]) == "function") then
		status, err = pcall(ON_PROPERTY_CHANGED[trimmedProperty], propertyValue)
	end

	if (not status) then
		LogError("LUA_ERROR: " .. err)
	end
end

--[[=============================================================================
    UpdateProperty(propertyName, propertyValue)
  
    Description:
    Sets the value of the given property in the driver
  
    Parameters:
    propertyName(string)  - The name of the property to change
    propertyValue(string) - The value of the property being changed
  
    Returns:
    None
===============================================================================]]
function UpdateProperty(propertyName, propertyValue)
	if (Properties[propertyName] ~= nil) then
		C4:UpdateProperty(propertyName, propertyValue)
	end
end
 end)
package.preload['common.c4_init'] = (function (...)
--[[=============================================================================
    Initial driver initialization and destruction functions

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_driver_declarations"
require "common.c4_property"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_init = "2016.01.08"
end

--[[=============================================================================
    OnDriverInit()

    Description
    Invoked by director when a driver is loaded. This API is provided for the
    driver developer to contain all of the driver objects that will require
    initialization.

    Parameters
    None

    Returns
    Nothing
===============================================================================]]
function OnDriverInit()
	gInitializingDriver = true
	C4:ErrorLog("INIT_CODE: OnDriverInit()")

	-- Call all ON_DRIVER_EARLY_INIT functions.
	for k,v in pairs(ON_DRIVER_EARLY_INIT) do
		if (ON_DRIVER_EARLY_INIT[k] ~= nil and type(ON_DRIVER_EARLY_INIT[k]) == "function") then
			C4:ErrorLog("INIT_CODE: ON_DRIVER_EARLY_INIT." .. k .. "()")
			local status, err = pcall(ON_DRIVER_EARLY_INIT[k])
			if (not status) then
				C4:ErrorLog("LUA_ERROR: " .. err)
			end
		end
	end

	-- Call all ON_DRIVER_INIT functions
	for k,v in pairs(ON_DRIVER_INIT) do
		if (ON_DRIVER_INIT[k] ~= nil and type(ON_DRIVER_INIT[k]) == "function") then
			C4:ErrorLog("INIT_CODE: ON_DRIVER_INIT." .. k .. "()")
			local status, err = pcall(ON_DRIVER_INIT[k])
			if (not status) then
				C4:ErrorLog("LUA_ERROR: " .. err)
			end
		end
	end

	-- Fire OnPropertyChanged to set the initial Headers and other Property
	-- global sets, they'll change if Property is changed.
	for k,v in pairs(Properties) do
		C4:ErrorLog("INIT_CODE: Calling OnPropertyChanged - " .. k .. ": " .. v)
		local status, err = pcall(OnPropertyChanged, k)
		if (not status) then
			C4:ErrorLog("LUA_ERROR: " .. err)
		end
	end

	gInitializingDriver = false
end

--[[=============================================================================
    OnDriverLateInit()

    Description
    Invoked by director after all drivers in the project have been loaded. This
    API is provided for the driver developer to contain all of the driver
    objects that will require initialization after all drivers in the project
    have been loaded.

    Parameters
    None

    Returns
    Nothing
===============================================================================]]
function OnDriverLateInit()
	C4:ErrorLog("INIT_CODE: OnDriverLateInit()")
	
	-- Call all ON_DRIVER_LATEINIT functions
	for k,v in pairs(ON_DRIVER_LATEINIT) do
		if (ON_DRIVER_LATEINIT[k] ~= nil and type(ON_DRIVER_LATEINIT[k]) == "function") then
			C4:ErrorLog("INIT_CODE: ON_DRIVER_LATEINIT." .. k .. "()")
			ON_DRIVER_LATEINIT[k]()
		end
	end
end


--[[=============================================================================
    OnDriverDestroyed()
    Function called by Director when a driver is removed. Release things this
    driver has allocated such as timers.

    Parameters
    None

    Returns
    Nothing
===============================================================================]]
function OnDriverDestroyed()
	C4:ErrorLog("INIT_CODE: OnDriverDestroyed()")
	
	-- Call all ON_DRIVER_DESTROYED functions
	for k, v in pairs(ON_DRIVER_DESTROYED) do
		if (ON_DRIVER_DESTROYED[k] ~= nil and type(ON_DRIVER_DESTROYED[k]) == "function") then
			C4:ErrorLog("INIT_CODE: ON_DRIVER_DESTROYED." .. k .. "()")
			ON_DRIVER_DESTROYED[k]()
		end
	end
end end)
package.preload['lib.c4_timer'] = (function (...)
--[[=============================================================================
    c4_timer Class

    Copyright 2017 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_driver_declarations"
require "lib.c4_object"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_timer = "2017.05.03"
end

c4_timer = inheritsFrom(nil)

function c4_timer:construct(name, interval, units, Callback, repeating, CallbackParam)
	self._name = name
	self._timerID = TimerLibGetNextTimerID()
	self._interval = interval
	self._units = units
	self._repeating = repeating or false
	self._Callback = Callback
	self._CallbackParam = CallbackParam or ""
	self._id = 0

	gTimerLibTimers[self._timerID] = self
	if (LOG ~= nil and type(LOG) == "table") then
		LogTrace("Created timer " .. self._name)
	end
end

function c4_timer:StartTimer(...)
	c4_timer:KillTimer()

	-- optional parameters (interval, units, repeating)
	if ... then
		local interval = select(1, ...)
		local units = select(2, ...)
		local repeating = select(3, ...)

		self._interval = interval or self._interval
		self._units = units or self._units
		self._repeating = repeating or self._repeating
	end

	if (tonumber(self._interval) > 0) then
		if (LOG ~= nil and type(LOG) == "table") then
			LogTrace("Starting Timer: " .. self._name)
		end

		self._id = C4:AddTimer(self._interval, self._units, self._repeating)
	end
end

function c4_timer:KillTimer()
	if (self._id) then
		self._id = C4:KillTimer(self._id)
	end
end

function c4_timer:TimerStarted()
	return (self._id ~= 0)
end

function c4_timer:TimerStopped()
	return (self._id == 0)
end

function c4_timer:GetTimerInterval()
	return (self._interval)
end

function TimerLibGetNextTimerID()
	gTimerLibTimerCurID = gTimerLibTimerCurID + 1
	return gTimerLibTimerCurID
end

function ON_DRIVER_EARLY_INIT.c4_timer()
	gTimerLibTimers = {}
	gTimerLibTimerCurID = 0
end

function ON_DRIVER_DESTROYED.c4_timer()
	-- Kill open timers
	for k,v in pairs(gTimerLibTimers) do
		v:KillTimer()
	end
end

--[[=============================================================================
    OnTimerExpired(idTimer)

    Description:
    Function called by Director when the specified Control4 timer expires.

    Parameters:
    idTimer(string) - Timer ID of expired timer.
===============================================================================]]
function OnTimerExpired(idTimer)
	for k,v in pairs(gTimerLibTimers) do
		if (idTimer == v._id) then
			if (v._Callback) then
				v._Callback(v._CallbackParam)
			end
		end
	end
end

--[[=============================================================================
    CreateTimer(name, interval, units, callback, repeating, callbackParam)

    Description: 
    Creates a named timer with the given attributes

    Parameters:
    name(string)       - The name of the timer being created
    interval(int)      - The amount of the given time between calls to the
                         timers callback function
    units(string)      - The time of time interval used (e.g. MILLSECONDS, SECONDS, MINUTES, HOURS)
    callback(string)   - The function to call when the timer expires
    repeating(bool)    - Parameter indicating whether the timer should be
                         called repeatedly until cancelled
    callbackParam(...) - Parameters to be passed to the callback function

    Returns:
    A handle to the timer
===============================================================================]]
function CreateTimer(name, interval, units, callback, repeating, callbackParam)
	timer = c4_timer:new(name, interval, units, callback, repeating, callbackParam)
	return timer
end

--[[=============================================================================
    StartTimer(handle, ...)

    Description: 
    Starts the timer created by calling the CreateTimer functions

    Parameters:
    handle(timer)   - Handle to a created timer object
    interval(int)   - The amount of the given time between calls to the
                      timers callback function
    units(string)   - The time of time interval used (e.g. SECONDS, MINUTES, ...)
    repeating(bool) - Parameter indicating whether the timer should be
                      called repeatedly until cancelled

    Returns:
    None
===============================================================================]]
function StartTimer(handle, ...)
	handle:StartTimer(...)
end

--[[=============================================================================
    KillTimer(handle)

    Description: 
    Starts the timer created by calling the CreateTimer functions

    Parameters:
    handle(timer) - Handle to a created timer object

    Returns:
    None
===============================================================================]]
function KillTimer(handle)
	handle:KillTimer()
end

--[[=============================================================================
    TimerStarted(handle)

    Description: 
    Identifies whether a timer has been started or not

    Parameters:
    handle(timer) - Handle to a created timer object

    Returns:
    Returns true if a the given timer handle has been started, or false otherwise
===============================================================================]]
function TimerStarted(handle)
	return handle:TimerStarted()
end

--[[=============================================================================
    TimerStopped(handle)

    Description: 
    Identifies whether a timer has been stopped or not

    Parameters:
    handle(timer) - Handle to a created timer object

    Returns:
    Returns true if a the given timer handle has been stopped, or false otherwise
===============================================================================]]
function TimerStopped(handle)
	return handle:TimerStopped()
end

--[[=============================================================================
    GetTimerInterval(handle)

    Description: 
    Gets the interval setting of the given timer

    Parameters:
    handle(timer) - Handle to a created timer object

    Returns:
    Returns the interval setting of the given timer
===============================================================================]]
function GetTimerInterval(handle)
	return handle:GetTimerInterval()
end

--[[=============================================================================
    c4_timer Unit Tests
===============================================================================]]
function __test_c4_timer()
	require "test.C4Virtual"
	require "lib.c4_log"
	require "common.c4_init"

	OnDriverInit()

	local LOG = c4_log:new("test_c4_timer")
	LOG:SetLogLevel(5)
	LOG:OutputPrint(true)

	function OnTestTimerExpired()
		c4Timer:KillTimer()
	end

	-- create an instance of the timer
	c4Timer = c4_timer:new("Test", 45, "MINUTES", OnTestTimerExpired)

	assert(c4Timer._id == 0, "_id is not equal to '0' it is: " .. c4Timer._id)
	c4Timer:StartTimer()
	assert(c4Timer._id == 10001, "_id is not equal to '10001' it is: " .. c4Timer._id)
	assert(c4Timer:TimerStarted() == true, "TimerStarted is not equal to true it is: " .. tostring(c4Timer:TimerStarted()))
	assert(c4Timer:TimerStopped() == false, "TimerStopped is not equal to false it is: " .. tostring(c4Timer:TimerStopped()))
	OnTimerExpired(c4Timer._id)
	assert(c4Timer:TimerStarted() == false, "TimerStarted is not equal to false it is: " .. tostring(c4Timer:TimerStarted()))
	assert(c4Timer:TimerStopped() == true, "TimerStopped is not equal to true it is: " .. tostring(c4Timer:TimerStopped()))
end end)
package.preload['lib.c4_object'] = (function (...)
--[[=============================================================================
    c4_object Class

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_object = "2016.01.08"
end

function inheritsFrom( baseClass )
	local new_class = {}
	local class_mt = { __index = new_class }

	function new_class:create(...)
		local newinst = {}

		setmetatable( newinst, class_mt )

		-- Call the constructor when we create this class
		if newinst.construct then
			-- Allow returning a different obj than self. This allows for readonly tables etc...
			newinst = newinst:construct(...) or newinst
		end

		return newinst
	end

	if nil ~= baseClass then
		setmetatable( new_class, { __index = baseClass } )
	end

	--[[=============================================================================
	    Implementation of additional OO properties starts here 
	===============================================================================]]
	
	-- Return the class object of the instance
	function new_class:class()
		return new_class
	end

	--[[=============================================================================
	    Return the super class object of the instance. 

	    Note Calling methods on the base class itself will modify
	    the base table's static properties. In order to have call
	    the base class' methods and have them modify the current object
	    use super() or superAsSelf(). 
	===============================================================================]]
	function new_class:superClass()
		return baseClass
	end

	--[[=============================================================================
	    Returns a table that allows calling of the base class's method
	    while maintaining the objects state as the modified state of the base
	    class' methods. For example consider the following statements (order matters):

	    -- The child sees the parents property if the child hasn't overriden the property
	       obj:superClass().id = "parent"
	       obj.id == "parent" -- true

	    -- Setting the property on the child overrides (hides) the parents property
	       obj.id = "child"
	       obj.id == "child" -- true

	    -- The super() method pass
	       obj:super().id == "parent" -- true
	       obj:super().id = "child"
	       obj:super().id == "parent" -- still true
	       obj.id == "child" -- still true
	===============================================================================]]
	function new_class:super()
		local holder = {}

		holder.child = self
		holder.parent = baseClass

		local mt = {}
		mt.__index = function(table, index)
			if table.parent[index] then
				return table.parent[index]
			else 
				return table.child[index]
			end
		end

		-- Only set the new values to the child.
		mt.__newindex = function(table, key, value)
			table.child[key] = value
		end

		mt.__tostring = function(table)
			return tostring(table.child)
		end

		setmetatable(holder, mt)
		return holder
	end

	new_class.new = new_class.create

	--[[=============================================================================
	    Return true if the caller is an instance of theClass
	===============================================================================]]
	function new_class:isa( theClass )
		local b_isa = false
		local cur_class = new_class

		while ( nil ~= cur_class ) and ( false == b_isa ) do
			if cur_class == theClass then
				b_isa = true
			else
				cur_class = cur_class:superClass()
			end
		end

		return b_isa
	end

	return new_class
end

--[[=============================================================================
    Inheritance unit tests
===============================================================================]]
function __test_inheritance()
	local b = inheritsFrom(nil)

	b.construct = function(self, msg)
		self._msg = msg
	end

	local t = inheritsFrom(b)
	t.construct = function(self, msg)
		self:super():construct(msg)
	end

	t1 = t:new("t1")
	t2 = t:new("t2")
	assert(t1._msg == "t1", "t1 message is not equal to 't1' it''s: " .. t1._msg)
	assert(t2._msg == "t2", "t2 message is not equal to 't2' it''s: " .. t2._msg)    
	assert(tostring(t1:super()) ==  tostring(t1), "tostrings don't match");
	assert(t1:superClass() == b, "superClass and baseClass should be the same. They are not.")

	t1:superClass().id = "parent"
	assert(t1.id == "parent", "obect''s super class has invalid property value: ", t1.id)

	-- Setting the property on the child overrides (hides) the parents property
	t1.id = "child"
	assert(t1.id == "child", "object instance variable has invalid property value: " .. t1.id)

	-- The super() method maintains the self pointer to the child and not to the base
	assert(t1:super().id == "parent", "superAsSelf found invalid value for base class variable")
	t1:super().id = "child1"
	assert(t1:super().id == "parent", "Setting of instance variable hid base classes variable from itself");
	assert(t1.id == "child1", "Settings of instance variable did not change child instance variable")
end end)
package.preload['lib.c4_log'] = (function (...)
--[[=============================================================================
    c4_log Class

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_driver_declarations"
require "lib.c4_object"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_log = "2016.01.08"
end

c4_log = inheritsFrom(nil)

function c4_log:construct(logName)
	self._logLevel = tonumber(string.sub(Properties['Log Level'] or "", 1, 1)) or 5
	self._outputPrint = Properties['Log Mode']:find("Print") ~= nil
	self._outputC4Log = Properties['Log Mode']:find("Log") ~= nil
	self._logName = logName or ""

	-- make sure Property is up to date (no harm if absent)
	C4:UpdateProperty("Log Level", Properties['Log Level'])
end

function c4_log:SetLogLevel(level)
	self._logLevel = tonumber(string.sub(level or "", 1, 1)) or self._logLevel
end

function c4_log:LogLevel()
	return self._logLevel
end

function c4_log:OutputPrint(value)
	self._outputPrint = value
end

function c4_log:OutputC4Log(value)
	self._outputC4Log = value
end

function c4_log:SetLogName(logName)

	if (logName == nil or logName == "") then
		logName = ""
	else
		logName = logName .. ": "
	end

	self._logName = logName
end

function c4_log:LogName()
	return self._logName
end

function c4_log:Enabled()
	return (self._outputPrint or self._outputC4Log)
end

function c4_log:PrintEnabled()
	return self._outputPrint
end

function c4_log:C4LogEnabled()
	return self._outputC4Log
end

function c4_log:CreateTableText(tValue, tableText)
	tableText = tableText or ""

	if (type(tValue) == "table") then

		tableText = tableText .. "{"
		for k, v in pairs(tValue) do

			-- add key
			if (type(k) == "number") then
				tableText = tableText .. "[" .. tostring(k) .. "]="
			elseif (type(k) == "string") then
				tableText = tableText .. k .. "="
			else
				print (tostring(k) .. ": " .. tostring (v))
			end

			-- add value
			if (type(v) == "number") then
				tableText = tableText .. tostring(v) .. ","
			elseif (type(v) == "string") then
				tableText = tableText .. "'" .. v .. "',"
			elseif (type(v) == "table") then
				tableText = c4_log:CreateTableText(v, tableText)
				tableText = tableText .. ","
			elseif (type(v) == "boolean") then
				tableText = tableText .. tostring(v) .. ","
			end
		end

		tableText = tableText .. "}"
	end

	return tableText
end

function InsertIndent(indentLevel)
	local indentStr = ""

	for i=1, indentLevel do
		indentStr = indentStr .. "\t"
	end

	return indentStr
end

function c4_log:CreateTableTextFormatted(tValue, tableText, indentLevel)
	tableText = tableText or ""
	indentLevel = indentLevel or 0

	if (type(tValue) == "table") then

		indentLevel = indentLevel + 1
		tableText = tableText .. "{\n"
		for k, v in pairs(tValue) do

			-- add key
			if (type(k) == "number") then
				tableText = tableText .. InsertIndent(indentLevel) .. "[" .. tostring(k) .. "]="
			elseif (type(k) == "string") then
				tableText = tableText .. InsertIndent(indentLevel) .. k .. "="
			else
				print (tostring(k) .. ": " .. tostring (v))
			end

			-- add value
			if (type(v) == "number") then
				tableText = tableText .. tostring(v) .. ",\n"
			elseif (type(v) == "string") then
				tableText = tableText .. "'" .. v .. "',\n"
			elseif (type(v) == "table") then
				tableText = c4_log:CreateTableTextFormatted(v, tableText, indentLevel)
				tableText = tableText .. ",\n"
			elseif (type(v) == "boolean") then
				tableText = tableText .. tostring(v) .. ",\n"
			end
		end

		indentLevel = indentLevel - 1
		tableText = tableText .. InsertIndent(indentLevel) .. "}"
	end

	return tableText
end

MAX_TABLE_LEVELS = 10
function c4_log:PrintTable(tValue, tableText, sIndent, level)
	tableText = tableText or ""
	level = level + 1
	
	if (level <= MAX_TABLE_LEVELS) then
		if (type(tValue) == "table") then
			for k,v in pairs(tValue) do
				if (tableText == "") then
					tableText = sIndent .. tostring(k) .. ":  " .. tostring(v)
					if (sIndent == ".   ") then sIndent = "    " end
				else
					tableText = tableText .. "\n" .. sIndent .. tostring(k) .. ":  " .. tostring(v)
				end
				if (type(v) == "table") then
					tableText = self:PrintTable(v, tableText, sIndent .. "   ", level)
				end
			end
		else
			tableText = tableText .. "\n" .. sIndent .. tostring(tValue)
		end
	end
	
	return tableText
end

function c4_log:LogTable(tValue, sIndent, level)
	level = level + 1
	
	if (level <= MAX_TABLE_LEVELS) then
		if (type(tValue) == "table") then
			for k,v in pairs(tValue) do
				C4:ErrorLog(self._logName .. sIndent .. tostring(k) .. ":  " .. tostring(v))
				if (type(v) == "table") then
					self:LogTable(v, sIndent .. "   ", level)
				end
			end
		else
			C4:ErrorLog(self._logName .. sIndent .. tValue)
		end
	end
end

function c4_log:Print(logLevel, sLogText)

	if (self._logLevel >= logLevel) then
		if (type(sLogText) == "table") then
			if (self._outputPrint) then
				print (self:PrintTable(sLogText, tableText, ".   ", 0))
			end

			if (self._outputC4Log) then
				self:LogTable(sLogText, "   ", 0)
			end

			return
		end

		if (self._outputPrint) then
			print (sLogText)
		end

		if (self._outputC4Log) then
			C4:ErrorLog(self._logName .. tostring(sLogText))
		end
	end
end

function c4_log:Fatal(sLogText, ...)
	self:LogOutput(0, sLogText, ...)
end

function c4_log:Error(sLogText, ...)
	self:LogOutput(1, sLogText, ...)
end

function c4_log:Warn(sLogText, ...)
	self:LogOutput(2, sLogText, ...)
end

function c4_log:Info(sLogText, ...)
	self:LogOutput(3, sLogText, ...)
end

function c4_log:Debug(sLogText, ...)
	self:LogOutput(4, sLogText, ...)
end

function c4_log:Trace(sLogText, ...)
	self:LogOutput(5, sLogText, ...)
end

function c4_log:LogOutput(level, sLogText, ...)
	if (LogEnabled()) then
		if (type(sLogText) == "string") then
			sLogText = string.format(sLogText, ...)
		end

		self:Print(level, sLogText)
	end
end

--[[=============================================================================
    c4_log wrapper functions
===============================================================================]]
function TryLog(level, sLogText, ...)
	LOG:LogOutput(level, sLogText, ...)
end

--[[=============================================================================
    SetLogLevel(level)

    Description: 
    Sets the desired log level to view

    Parameters:
    level(int) - The logging level to set the message to
                 0 = Fatal
                 1 = Error
                 2 = Warn
                 3 = Info
                 4 = Debug
                 5 = Trace

    Returns:
    None
===============================================================================]]
function SetLogLevel(level)
	LOG:SetLogLevel(level)
end

--[[=============================================================================
    LogLevel()

    Description: 
    Returns the currently set log level

    Parameters:
    None

    Returns:
    The current log level
        0 = Fatal
        1 = Error
        2 = Warn
        3 = Info
        4 = Debug
        5 = Trace
===============================================================================]]
function LogLevel()
	return LOG:LogLevel()
end

--[[=============================================================================
    OutputPrint(value)

    Description: 
    Specifies whether to output log messages or not

    Parameters:
    value(bool) - true to enable logging output, false otherwise

    Returns:
    None
===============================================================================]]
function OutputPrint(value)
	LOG:OutputPrint(value)
end

--[[=============================================================================
    OutputPrint(value)

    Description: 
    Specifies whether to output log messages to file or not

    Parameters:
    value(bool) - true to enable logging output, false otherwise

    Returns:
    None
===============================================================================]]
function OutputC4Log(value)
	LOG:OutputC4Log(value)
end

--[[=============================================================================
    SetLogName(logName)

    Description: 
    Sets the name of the log file where the messages will be written to

    Parameters:
    logName(string) - Sets the name of the log to write messages to

    Returns:
    None
===============================================================================]]
function SetLogName(logName)
	LOG:SetLogName(logName)
end

--[[=============================================================================
    LogName(logName)

    Description: 
    Gets the name of the log file where the messages will be written to

    Parameters:
    None

    Returns:
    The value of the log file that has been set
===============================================================================]]
function LogName()
	return LOG:LogName()
end

--[[=============================================================================
    LogEnabled()

    Description: 
    Identifies if logging or print has been enabled

    Parameters:
    None

    Returns:
    true if either logging or print has been enabled, false otherwise
===============================================================================]]
function LogEnabled()
	return LOG:Enabled()
end

--[[=============================================================================
    PrintEnabled()

    Description: 
    Gets the state of print output

    Parameters:
    None

    Returns:
    true if print has been enabled, false otherwise
===============================================================================]]
function PrintEnabled()
	return LOG:PrintEnabled()
end

--[[=============================================================================
    C4LogEnabled()

    Description: 
    Gets the state of logging

    Parameters:
    None

    Returns:
    true if logging has been enabled, false otherwise
===============================================================================]]
function C4LogEnabled()
	return LOG:C4LogEnabled()
end

--[[=============================================================================
    LogFatal(sLogText, ...)

    Description: 
    Formats and prints a series of characters and values to the enabled outputs
    when the set logging level is Fatal(0) or higher

    Parameters:
    sLogText(string) - Format control string
    ...              - Optional arguments which will replace all the format
                       specifiers contained in the format string

    Returns:
    None
===============================================================================]]
function LogFatal(sLogText, ...)
	local status, err = pcall(TryLog, 0, sLogText, ...)
	if (not status) then
		LOG:Print(1, "LUA_ERROR - LogFatal failed: " .. err)
	end
end

--[[=============================================================================
    LogError(sLogText, ...)

    Description: 
    Formats and prints a series of characters and values to the enabled outputs
    when the set logging level is Error(1) or higher

    Parameters:
    sLogText(string) - Format control string
    ...              - Optional arguments which will replace all the format
                       specifiers contained in the format string

    Returns:
    None
===============================================================================]]
function LogError(sLogText, ...)
	local status, err = pcall(TryLog, 1, sLogText, ...)
	if (not status) then
		LOG:Print(1, "LUA_ERROR - LogError failed: " .. err)
	end
end

--[[=============================================================================
    LogWarn(sLogText, ...)

    Description: 
    Formats and prints a series of characters and values to the enabled outputs
    when the set logging level is Warn(2) or higher

    Parameters:
    sLogText(string) - Format control string
    ...              - Optional arguments which will replace all the format
                       specifiers contained in the format string

    Returns:
    None
===============================================================================]]
function LogWarn(sLogText, ...)
	local status, err = pcall(TryLog, 2, sLogText, ...)
	if (not status) then
		LOG:Print(1, "LUA_ERROR - LogWarn failed: " .. err)
	end
end

--[[=============================================================================
    LogInfo(sLogText, ...)

    Description: 
    Formats and prints a series of characters and values to the enabled outputs
    when the set logging level is Info(3) or higher

    Parameters:
    sLogText(string) - Format control string
    ...              - Optional arguments which will replace all the format
                       specifiers contained in the format string

    Returns:
    None
===============================================================================]]
function LogInfo(sLogText, ...)
	local status, err = pcall(TryLog, 3, sLogText, ...)
	if (not status) then
		LOG:Print(1, "LUA_ERROR - LogInfo failed: " .. err)
	end
end

--[[=============================================================================
    LogDebug(sLogText, ...)

    Description: 
    Formats and prints a series of characters and values to the enabled outputs
    when the set logging level is Debug(4) or higher

    Parameters:
    sLogText(string) - Format control string
    ...              - Optional arguments which will replace all the format
                       specifiers contained in the format string

    Returns:
    None
===============================================================================]]
function LogDebug(sLogText, ...)
	local status, err = pcall(TryLog, 4, sLogText, ...)
	if (not status) then
		LOG:Print(1, "LUA_ERROR - LogDebug failed: " .. err)
	end
end

--[[=============================================================================
    LogTrace(sLogText, ...)

    Description: 
    Formats and prints a series of characters and values to the enabled outputs
    when the set logging level is Trace(5) or higher

    Parameters:
    sLogText(string) - Format control string
    ...              - Optional arguments which will replace all the format
                       specifiers contained in the format string

    Returns:
    None
===============================================================================]]
function LogTrace(sLogText, ...)
	local status, err = pcall(TryLog, 5, sLogText, ...)
	if (not status) then
		LOG:Print(1, "LUA_ERROR - LogTrace failed: " .. err)
	end
end

function dbgPrint(buf)
	if (LOG:PrintEnabled()) then
		print (buf)
	end
end

function dbgHexdump(buf)
	hexdump(buf, dbgPrint)
end

--[[=============================================================================
    c4_log unit tests
===============================================================================]]
function __test_c4_log()
	require "test.C4Virtual"
	
	local LOG = c4_log:new("test_c4_log")
	assert(LOG:LogName() == "test_c4_log", "_logName is not equal to 'test_c4_log' it is: " .. LOG:LogName())

	-- Test setting log level
	LOG:SetLogLevel("2 - Warning")
	assert(LOG:LogLevel() == 2, "_logLevel is not equal to '2' it is: " .. LOG:LogLevel())

	LOG:SetLogLevel(3)
	assert(LOG:LogLevel() == 3, "_logLevel is not equal to '3' it is: " .. LOG:LogLevel())

	-- Test enabling logs
	LOG:OutputPrint(false)
	assert(LOG:PrintEnabled() == false, "_outputPrint is not equal to 'false' it is: " .. tostring(LOG:PrintEnabled()))

	LOG:OutputC4Log(true)
	assert(LOG:C4LogEnabled() == true, "_outputC4Log is not equal to 'true' it is: " .. tostring(LOG:C4LogEnabled()))

	LOG:SetLogLevel(4)
	LogTrace("***** This is a test *****")
end

function __test_CreatTableText()
	local tTest = {}

	tTest[1] = {}
	tTest[2] = {}
	tTest[3] = 30
	tTest[4] = "Forty"
	
	LogTrace("----- tText -----")
	LogTrace(tTest)

	local tTest2 = { One = {},
					 Two = {},
					 Three = 30,
					 Four = "Forty" }
	LogTrace("----- tText2 -----")
	LogTrace(tTest2)
	
	local tTest3 = { [1] = {},
					 [2] = {},
					 [3] = 30,
					 [4] = "Forty" }
	LogTrace("----- tText3 -----")
	LogTrace(tTest3)

	local tTest4 = { [1] = {},
					 Two = {},
					 [3] = 30,
					 [4] = "Forty",
					 Five = "Fifty" }
	LogTrace("----- tText4 -----")
	LogTrace(tTest4)

	local tableText = LOG:CreateTableText(tTest4)
	LogTrace("----- tableText -----")
	LogTrace(tableText)
	
	--local tNew = {[1] = {},[3] = 30,[4] = 'Forty',Five = 'Fifty',Two = {},}
	--LogTrace(tNew)
end

function __TestCreateTableTextFormatted()
	require "test.C4Virtual"
	
	local LOG = c4_log:new("test_c4_log")
	local tButtons = {
		Name = 'heat',
		Attributes = {},
		ChildNodes = {
			[1] = {
				Name = 'button',
				Attributes = {},
				ChildNodes = {
					[1] = {
						Value = '51',
						Attributes = {},
						Name = 'id',
						ChildNodes = {},
					},
					[2] = {
						Value = 'Pool Heater',
						Attributes = {},
						Name = 'button_text',
						ChildNodes = {},
					},
					[3] = {
						Value = 'POOLHT',
						Attributes = {},
						Name = 'button_name',
						ChildNodes = {},
					},
				},
			},
			[2] = {
				Name = 'button',
				Attributes = {},
				ChildNodes = {
					[1] = {
						Value = '53',
						Attributes = {},
						Name = 'id',
						ChildNodes = {},
					},
					[2] = {
						Value = 'Spa Heater',
						Attributes = {},
						Name = 'button_text',
						ChildNodes = {},
					},
					[3] = {
						Value = 'SPAHT',
						Attributes = {},
						Name = 'button_name',
						ChildNodes = {},
					},
				},
			},
			[3] = {
				Name = 'button',
				Attributes = {},
				ChildNodes = {
					[1] = {
						Value = '54',
						Attributes = {},
						Name = 'id',
						ChildNodes = {},
					},
					[2] = {Value = 'Pool Solar Heater',
						Attributes = {},
						Name = 'button_text',
						ChildNodes = {}
					},
					[3] = {
						Value = 'SOLHT',
						Attributes = {},
						Name = 'button_name',
						ChildNodes = {},
					},
				}
			}
		}
	}

	print(LOG:CreateTableTextFormatted(tButtons))
end end)
package.preload['common.c4_common'] = (function (...)
--[[=============================================================================
    ON_INIT, Timer,s and Property management functions

    Copyright 2016 Control4 Corporation. All Rights Reserved.
===============================================================================]]
require "common.c4_driver_declarations"
require "lib.c4_log"
require "lib.c4_timer"

-- Set template version for this file
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.c4_common = "2016.01.08"
end

--[[=============================================================================
    Create and Initialize Logging
===============================================================================]]
function ON_DRIVER_EARLY_INIT.c4_common()
	-- Create a logger
	LOG = c4_log:new("Template_c4z Change Name")
end

function ON_DRIVER_INIT.c4_common()
	-- Create Log Timer
	gC4LogTimer = c4_timer:new("Log Timer", 45, "MINUTES", OnLogTimerExpired)
end

--[[=============================================================================
    Log timer callback function
===============================================================================]]
function OnLogTimerExpired()
	LogWarn("Turning Log Mode Off (timer expired)")
	gC4LogTimer:KillTimer()
	
	C4:UpdateProperty("Log Mode", "Off")
	OnPropertyChanged("Log Mode")
end

gForceLogging = false
function ON_PROPERTY_CHANGED.LogMode(propertyValue)
	gC4LogTimer:KillTimer()
	
	if (gForceLogging) then
		LOG:OutputPrint(true)
		LOG:OutputC4Log(true)
	else
		LOG:OutputPrint(propertyValue:find("Print") ~= nil)
		LOG:OutputC4Log(propertyValue:find("Log") ~= nil)
		if (propertyValue == "Off") then
			return
		end
		
		gC4LogTimer:StartTimer()
	end
end

function ON_PROPERTY_CHANGED.LogLevel(propertyValue)
	if (gForceLogging) then
		LOG:SetLogLevel("5 - Debug")
	else
		LOG:SetLogLevel(propertyValue)
	end
end

--[[=============================================================================
    Print Template Versions
===============================================================================]]
function TemplateVersion()
	print ("\nTemplate Versions")
	print ("-----------------------")
	for k, v in pairs(TEMPLATE_VERSION) do
		print (k .. " = " .. v)
	end
	
	print ("")
end end)
package.preload['common.c4_driver_declarations'] = (function (...)
--[[=============================================================================
    Driver Declarations used to call startup routines, teardown routines, and 
    other basic functions of the drivers operation

    Copyright 2017 Control4 Corporation. All Rights Reserved.
===============================================================================]]

-- Template Version Table
TEMPLATE_VERSION = {}
TEMPLATE_VERSION.c4_driver_declarations = "2017.04.25"

-- Command Handler Tables
EX_CMD = {}
PRX_CMD = {}
UI_REQ = {}
NOTIFY = {}
DEV_MSG = {}
LUA_ACTION = {}
PROG_CONDITIONAL = {}


--[[=============================================================================
    Tables of functions
    The following tables are function containers that are called within the
    following functions:

    OnDriverInit()
        First calls all functions contained within ON_DRIVER_EARLY_INIT table
        then calls all functions contained within ON_DRIVER_INIT table

    OnDriverLateInit()
        Calls all functions contained within ON_DRIVER_LATEINIT table

    OnDriverDestroyed()
        Calls all functions contained within ON_DRIVER_DESTROYED table

    OnPropertyChanged()
        Calls all functions contained within ON_PROPERTY_CHANGED table
===============================================================================]]
ON_DRIVER_INIT = {}
ON_DRIVER_EARLY_INIT = {}
ON_DRIVER_LATEINIT = {}
ON_DRIVER_DESTROYED = {}
ON_PROPERTY_CHANGED = {}

-- Constants
DEFAULT_PROXY_BINDINGID = 5001 end)

--[[=============================================================================
    Basic Template for DVD Driver

    Copyright 2015 Control4 Corporation. All Rights Reserved.
===============================================================================]]------------
require "common.c4_driver_declarations"
require "common.c4_common"
require "common.c4_init"
require "common.c4_property"
require "common.c4_command"
require "common.c4_notify"
require "common.c4_network_connection"
require "common.c4_serial_connection"
require "common.c4_ir_connection"
require "common.c4_utils"
require "lib.c4_timer"
require "actions"
require "device_specific_commands"
require "device_messages"
require "dvd_init"
require "properties"
require "proxy_commands"
require "connections"
require "dvd.dvd_proxy_class"
require "dvd.dvd_proxy_commands"
require "dvd.dvd_proxy_notifies"

-- This macro is utilized to identify the version string of the driver template version used.
if (TEMPLATE_VERSION ~= nil) then
	TEMPLATE_VERSION.driver = "2015.03.31"
end

--[[=============================================================================
    Constants
===============================================================================]]
DVD_PROXY_BINDINGID = 5001


--[[=============================================================================
    Initialization Code
===============================================================================]]
function ON_DRIVER_EARLY_INIT.main()
    gTicketIdMap = {}
	
end

function ON_DRIVER_INIT.main()

	-- TODO: If cloud based driver then uncomment the following line
	--ConnectURL()
end

function ON_DRIVER_LATEINIT.main()
	C4:urlSetTimeout(20)
	DRIVER_NAME = C4:GetDriverConfigInfo("name")
	
	SetLogName(DRIVER_NAME)
	
    --enable the Lua Command Window in Composer
    if (LuaC4Object.AllowExecute) then C4:AllowExecute(true) end 
    
    C4:SetPropertyAttribs ("Volume Ramp Delay Milliseconds", 1)
    C4:SetPropertyAttribs ("NetworkKeepAliveIntervalSeconds", 1)
    C4:SetPropertyAttribs ("On Power On", 1)
    C4:SetPropertyAttribs ("On Power Off", 1)
    C4:SetPropertyAttribs ("Passthrough Mode", 1)
    
end

function ON_DRIVER_EARLY_INIT.dvd_driver()

end

function ON_DRIVER_INIT.dvd_driver()

    -- Create an instance of the DVD Proxy class
    -- TODO: Change bProcessesDeviceMessages to false if Device Power State Messages will not be processes
    local  bProcessesDeviceMessages = true
    gDVDProxy = DVDProxy:new(DVD_PROXY_BINDINGID,  bProcessesDeviceMessages)
	
    gPowerOnInProgressTimer = c4_timer:new("PowerOnInProgressTimer", tonumber(Properties["Power On Delay Seconds"]), "SECONDS", OnPowerOnInProgressTimerExpired)
    gPowerOnDelayTimer = c4_timer:new("PowerOnDelayTimer", 2, "SECONDS", OnPowerOnDelayTimerExpired)
    gPowerOffDelayTimer = c4_timer:new("PowerOffDelayTimer", 2, "SECONDS", OnPowerOffDelayTimerExpired)
    gPowerOffInProgressTimer = c4_timer:new("PowerOffInProgressTimer", tonumber(Properties["Power Off Delay Seconds"]), "SECONDS", OnPowerOffInProgressTimerExpired)
    gSendPowerOnAfterPowerOffDelayTimer = c4_timer:new("SendPowerOnAfterPowerOffDelayTimer", tonumber(Properties["Power Off Delay Seconds"]), "SECONDS", OnSendPowerOnAfterPowerOffDelayTimerExpired)

    gQueryStatusDelayTimer = c4_timer:new("QueryStatusDelayTimer", 1, "SECONDS", OnQueryStatusDelayTimerExpired)
    gQueryPlayerInfoDelayTimer = c4_timer:new("QueryPlayerInfoDelayTimer", 1, "SECONDS", OnQueryPlayerInfoDelayTimerExpired)
    
    gNetworkInitTimer = c4_timer:new("NetworkInitTimer", 5, "SECONDS", OnNetworkInitTimerExpired)
    
    --gDoEventsDelayTimer = c4_timer:new("DoEventsDelayTimer", 150, "MILLISECONDS", OnDoEventsDelayTimerExpired)
    gMenuNavigationDebounceTimer = c4_timer:new("MenuNavigationDebounceTimer", 1000, "MILLISECONDS", OnMenuNavigationDebounceTimerExpired)
    gTransportNavigationDebounceTimer = c4_timer:new("TransportNavigationDebounceTimer", 1000, "MILLISECONDS", OnTransportNavigationDebounceTimerExpired)
    gSetInputDelayTimer = c4_timer:new("SetInputDelayTimer", 2, "SECONDS", OnSetInputDelayTimerExpired, command)
    
    gHandleACKDelayTimer = c4_timer:new("HandleACKDelayTimer", 500, "MILLISECONDS", OnHandleACKDelayTimerExpired)
end

function ON_DRIVER_LATEINIT.dvd_driver()

end

--[[=============================================================================
    Driver Code
===============================================================================]]

function PackAndQueueCommand(...)
    local command_name = select(1, ...) or ""
    local command = select(2, ...) or ""
    local command_delay = select(3, ...) or tonumber(Properties["Command Delay Milliseconds"])
    local delay_units = select(4, ...) or "MILLISECONDS"
    LogTrace("PackAndQueueCommand(), command_name = " .. command_name .. ", command delay set to " .. command_delay .. " " .. delay_units)
    if (command == "") then
	   LogWarn("PackAndQueueCommand(), command_name = " .. command_name .. ", command string is empty - exiting PackAndQueueCommand()")
	   return
    end
	
	-- TODO: pack command with any any required starting or ending characters
    local cmd, stx, etx
    if (gControlMethod == "Network") then
		-- TODO: define any required starting or ending characters. 
		stx = ""
		etx = "\r"
		cmd = stx .. command .. etx
    elseif (gControlMethod == "Serial") then
		-- TODO: define any required starting or ending characters. 
		stx = ""
		etx = "\r"
		cmd = stx .. command .. etx
    elseif (gControlMethod == "IR") then
		cmd = command
    else
		LogWarn("PackAndQueueCommand(): gControlMethod is not valid, ".. gControlMethod)
		return
    end
    gCon:QueueCommand(cmd, command_delay, delay_units, command_name)	
	
end
