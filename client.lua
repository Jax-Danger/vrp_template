-- init vRP server context
Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")
local cvRP = module("vrp", "client/vRP")
vRP = cvRP()
local pvRP = {}
-- load script in vRP context
pvRP.loadScript = module
Proxy.addInterface("vRP", pvRP)
--[[
******************************************************************************************
						Dont change anything above this line
******************************************************************************************
--]]

local cfg = module("vrp_template", "cfg/cfg") -- this will load the cfg if it's used.

local template = class("template", vRP.Extension)
template.tunnel = {}

function template:__construct() -- this will always be called when the extension is loaded
	vRP.Extension.__construct(self)
end

vRP:registerExtension(template) -- this completes the registration of the extension