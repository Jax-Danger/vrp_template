fx_version 'cerulean'
game 'gta5'

dependencies {
	'vrp'						   		-- Add comma if other dependencies
}

server_script { 
	"@vrp/lib/utils.lua",
	"vrp/sv_vrp.lua",
}
client_script {
	"@vrp/lib/utils.lua",
	'vrp/cl_vrp.lua',
}

files {
	'client.lua',
	"cfg/cfg.lua"
}


