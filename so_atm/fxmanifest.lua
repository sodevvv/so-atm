fx_version "cerulean"
game "gta5"
lua54 "yes"
author "So"
client_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    'client.lua',

}

shared_scripts {
    '@es_extended/imports.lua',
    'config.lua',
}

server_scripts {
    '@ox_lib/init.lua',
    '@oxmysql/lib/MySQL.lua',
    '@es_extended/imports.lua',
    'server.lua'
}
