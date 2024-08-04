local Jax = class("Jax", vRP.Extension)
Jax.event = {}
Jax.tunnel = {}

function Jax:__construct()
	vRP.Extension.__construct(self)

	RegisterCommand('id', function(source,args,rawCommand)
		local id = self.remote.getID()
		if id then
			vRP.EXT.Base:notify('Your first name is '..id[2]..' and your last name is '..id[1])
		else
			vRP.EXT.Base:notify('You do not have an identity. Please relog.')
		end
	end, false)
end

vRP:registerExtension(Jax)
