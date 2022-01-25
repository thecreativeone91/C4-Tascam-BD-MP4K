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
end

function ON_DRIVER_LATEINIT.dvd_init()
end
	
function PROTOCOL_DECLARATIONS.CommandsTableInit_IR()
	LogTrace("PROTOCOL_DECLARATIONS.CommandsTableInit_IR()")

	CMDS_IR = {
		--index:  Proxy Command Name
		--value:  IR Code ID	 
		--Power
		["ON"]             = "",
		["OFF"]            = "",
		
		--Transport
		["PLAY"]		=	"",
		["STOP"]		=	"",
		["PAUSE"]		=	"",
		["SKIP_FWD"]	=	"",		
		["SCAN_FWD"]	=	"",		
		["SKIP_REV"]	=	"",		
		["SCAN_REV"]	=	"",	
		["OPEN_CLOSE"]	=	"",	--EJECT
		
		--Menu
		["INFO"] = "",	--Display
		["GUIDE"] = "",
		["MENU"] = "",
		["CANCEL"] = "",
		["UP"] = "",
		["DOWN"] = "",
		["LEFT"] = "",
		["RIGHT"] = "",
		["ENTER"] 		= "",	
		["RECALL"]         = "",
		["PREV"]           = "",
		
		--Digits
		["NUMBER_0"]       = "", 	
		["NUMBER_1"]       = "",		
		["NUMBER_2"]       = "",	
		["NUMBER_3"]       = "",	
		["NUMBER_4"]       = "",	
		["NUMBER_5"]       = "",	
		["NUMBER_6"]       = "",	
		["NUMBER_7"]       = "",	
		["NUMBER_8"]       = "",	
		["NUMBER_9"]       = "",
		["STAR"]           = "",
		["DOT"]            = "",		
		
		--Color
		["PROGRAM_A"]       = "",	--RED
		["PROGRAM_B"]       = "",	--GREEN
		["PROGRAM_C"]       = "",	--YELLOW
		["PROGRAM_D"]       = "",	--BLUE
	}			
		
	CMDS_IR[DVD_PROXY_BINDINGID] = {}
	
end

function PROTOCOL_DECLARATIONS.CommandsTableInit_Serial()
	LogTrace("PROTOCOL_DECLARATIONS.CommandsTableInit_Serial()")

	CMDS = {
		--index:  Proxy Command Name
		--value:  Protocol Command Data
		
		--Power
		["ON"]		= "!7PWR01",
		["OFF"]        = "!7PWR00",
		
		--Transport
		["PLAY"]		= "!7PLY",
		["STOP"]		= "!7STP",
		["PAUSE"]		= "!7PAS",
		["SKIP_FWD"]	= "!7SKPNX",		
		["SCAN_FWD"]	= "!7SCNFF",		
		["SKIP_REV"]	= "!7SKPPV",		
		["SCAN_REV"]	= "!7SCNRF",
		["EJECT"]      = "!7OPCOP",	--EJECT
		["OPEN_CLOSE"]	= "!7OPCCL",	--CLOSE
		
		
		--Menu--
		["INFO"] = "!7DSP", --Display
		["GUIDE"] = "!7TMN",
		["MENU"] = "!7OMN",
		["CANCEL"] = "!7RET",
		["UP"] = "!7OSD3",
		["DOWN"] = "!7OSD4",
		["LEFT"] = "!7OSD1",
		["RIGHT"] = "!7OSD2",
		["ENTER"] = "!7ENT",	
		["RECALL"]         = "",
		["PREV"]           = "",
		
		["DVR"] = "!7TMN",
		["PVR"] = "!7TMN",
				
		
		--Digits
		["NUMBER_0"]       = "!7NUM0", 	
		["NUMBER_1"]       = "!7NUM1",		
		["NUMBER_2"]       = "!7NUM2",	
		["NUMBER_3"]       = "!7NUM3",	
		["NUMBER_4"]       = "!7NUM4",	
		["NUMBER_5"]       = "!7NUM5",	
		["NUMBER_6"]       = "!7NUM6",	
		["NUMBER_7"]       = "!7NUM7",	
		["NUMBER_8"]       = "!7NUM8",	
		["NUMBER_9"]       = "!7NUM9",
		["STAR"]           = "",
		["DOT"]            = "",	
		
		--Color
		["PROGRAM_A"]	= "!7CBC1",	--RED
		["PROGRAM_B"]	= "!7CBC2",	--GREEN
		["PROGRAM_C"]	= "!7CBC4",	--YELLOW
		["PROGRAM_D"]	= "!7CBC3",	--BLUE		
	}

	CMDS[DVD_PROXY_BINDINGID] = {}
end

function ReverseTable(a)
	local b = {}
	for k,v in pairs(a) do b[v] = k end
	return b
end
