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

function template:getID()
	local id = vRP.users_by_source[source]
	if id then
		local fname = id.firstname
		local lname = id.name
		return {fname, lname}
	else
		return vRP.EXT.Base.remote._notify(user.source, 'Something is wrong. Please relog.')
	end
end
template.tunnel.getID = template.getID


vRP:registerExtension(template) -- this completes the registration of the extension
