local Jax = class("Jax", vRP.Extension)
Jax.event = {}
Jax.tunnel = {}

function Jax:__construct()
  vRP.Extension.__construct(self)
end

function Jax:getID()
  local user = vRP.users_by_source[source]
  local identity = vRP.EXT.Identity:getIdentity(user.cid)

  if identity then
    local fname = identity.firstname
    local lname = identity.name
    return {fname, lname}
  end
end
Jax.tunnel.getID = Jax.getID

vRP:registerExtension(Jax)
