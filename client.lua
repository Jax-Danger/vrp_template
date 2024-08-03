local Jax = class("Jax", vRP.Extension)
Jax.event = {}
Jax.tunnel = {}

function Jax:__construct()
	vRP.Extension.__construct(self)
	self.cfg = module("vrp_template", "cfg/cfg")

	RegisterCommand('id', function(source, args, rawCommand)
		local id = self.remote.getID() -- returns the players first and last name
		if id then
			vRP.EXT.Base:notify("First name: "..id[2].."| Last name: "..id[2])
		else
			vRP.EXT.Base:notify("Something went wrong when checking your identity.")
		end
	end, false)
end

vRP:registerExtension(Jax)
