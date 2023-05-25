fx_version 'cerulean'
games { 'gta5' }

author 'zeixna'
description 'Speed traps made by polyzones that '
version '0.0.1'

files {
    'snapshots.json'
}

client_scripts {
    'client/config.lua',
    'client/zones.lua',
    'client/utils.lua',
    'client/main.lua',
}

server_scripts {
    'server/**.lua'
}

lua54 'yes'

