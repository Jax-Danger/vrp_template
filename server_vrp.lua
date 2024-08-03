local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

local vRP = Proxy.getInterface("vRP")


async(function()
  vRP.loadScript("vrp_template", "server")		-- change vrp_template to file name of mod
end)