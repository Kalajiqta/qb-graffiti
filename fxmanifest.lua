fx_version 'cerulean'
game 'gta5'

author 'Kalajiqta - Matrix Development'
description 'QBCore Graffiti'
version '1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua'
}

client_scripts {
    'client/client_main.lua',
    'client/client_functions.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server_main.lua',
    'server/server_functions.lua'
}
