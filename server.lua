local Jax = class("Jax", vRP.Extension)
Jax.event = {}
Jax.tunnel = {}

function Jax:__construct()
  vRP.Extension.__construct(self)
end

vRP:registerExtension(Jax)
