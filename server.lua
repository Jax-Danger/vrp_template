local lang = vRP.lang
local template = class("template", vRP.Extension)														
template.event = {}
template.tunnel = {}
--[[
******************************************************************************************
						Dont change anything above this line
******************************************************************************************
--]]

function template:__construct() -- this will always be called when the extension is loaded
	vRP.Extension.__construct(self)
end

vRP:registerExtension(template) -- this completes the registration of the extension
