local lang = vRP.lang
local tutorial = class("tutorial", vRP.Extension)														
tutorial.event = {}
tutorial.tunnel = {}
--[[
******************************************************************************************
						Dont change anything above this line
******************************************************************************************
--]]

function tutorial:__construct()
	vRP.Extension.__construct(self)
	self.cfg = module("vrp_tutorial", "cfg/cfg")			-- change vrp_tutorial to file name	& make sure path is correct if a cfg file is used													
end


vRP:registerExtension(tutorial)		-- Make sure the Name matches class name you chose
