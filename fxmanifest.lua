fx_version 'cerulean'
game 'gta5'

dependencies {
	'vrp',
}

server_script { 
	"@vrp/lib/utils.lua",
	"sv_vrp.lua",
}
client_script {
	"@vrp/lib/utils.lua",
	'cl_vrp.lua',
}

files {
	'client.lua',
	"cfg/cfg.lua"
}
