--[[
        
        💬 Export from K1Dev => discord: https://discord.gg/awayfromus ] 
        🐌 @Copyright K1Dev
        ☕ Thanks For Coffee Tips 
        🧠 Development team => "RDX-Dev"
--]]

fx_version 'adamant'
games {'rdr3'}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'K1Dev'
version '1.0'
lua54 "yes"

ui_page 'html/annoucer.html'

files {
    'html/annoucer.html',
    'html/img/logo.png',
    'html/style.css',
    'html/script.js',
    'html/waterdrop.mp3'
}

client_scripts {
    'config.lua',
    'client/main.lua'
}
server_scripts {
    'config.lua',
    'server/main.lua'
}