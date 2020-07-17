fx_version 'adamant'
game 'gta5'


description 'ESX Lester Jobs'

version '1.0.1'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'config.lua',
	'locales/br.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'locales/br.lua',
	'client/main.lua'
}
