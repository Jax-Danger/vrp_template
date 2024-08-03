--Main Information
fx_version "cerulean"
game "gta5"
lua54 'yes'

author 'JaxDanger'
description 'A template for vrp2 framework to help future vrp2 developers get started.'

dependencies {
	"vrp",
}

server_script {
	"@vrp/lib/utils.lua",
	"server_vrp.lua",
}

client_script {
	"@vrp/lib/utils.lua",
	"cl_vrp.lua",
}

files {
	"client.lua",
	"cfg/cfg.lua",
}

shared_scripts {
	"@ox_lib/init.lua",
}
