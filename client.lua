local Jax = class("Jax", vRP.Extension)
Jax.event = {}
Jax.tunnel = {}

function Jax:__construct()
	vRP.Extension.__construct(self)
	self.cfg = module("vrp_template", "cfg/cfg")
end

vRP:registerExtension(Jax)
