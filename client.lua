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

local cfg = module("vrp_tutorial", "cfg/cfg")
local tutorial = class("tutorial", vRP.Extension)
tutorial.tunnel = {}

function tutorial:__construct()
	vRP.Extension.__construct(self)
end

vRP:registerExtension(tutorial)