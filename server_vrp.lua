local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

local vRP = Proxy.getInterface("vRP")


async(function()
  vRP.loadScript("vrp_tutorial2", "server")		-- change vrp_tutorial to file name of mod
end)