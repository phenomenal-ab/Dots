"
"  ▄               ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄       ▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ 
" ▐░▌             ▐░▌▐░░░░░░░░░░░▌▐░░▌     ▐░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
"  ▐░▌           ▐░▌  ▀▀▀▀█░█▀▀▀▀ ▐░▌░▌   ▐░▐░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ 
"   ▐░▌         ▐░▌       ▐░▌     ▐░▌▐░▌ ▐░▌▐░▌▐░▌       ▐░▌▐░▌          
"    ▐░▌       ▐░▌        ▐░▌     ▐░▌ ▐░▐░▌ ▐░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌          
"     ▐░▌     ▐░▌         ▐░▌     ▐░▌  ▐░▌  ▐░▌▐░░░░░░░░░░░▌▐░▌          
"      ▐░▌   ▐░▌          ▐░▌     ▐░▌   ▀   ▐░▌▐░█▀▀▀▀█░█▀▀ ▐░▌          
"       ▐░▌ ▐░▌           ▐░▌     ▐░▌       ▐░▌▐░▌     ▐░▌  ▐░▌          
"        ▐░▐░▌        ▄▄▄▄█░█▄▄▄▄ ▐░▌       ▐░▌▐░▌      ▐░▌ ▐░█▄▄▄▄▄▄▄▄▄ 
"         ▐░▌        ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌
"          ▀          ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀ 

let s:VIM_HOME = "$HOME/.config/nvim"

let s:scriptsHome = expand(s:VIM_HOME) . '/scripts'
exec "set rtp+=". s:scriptsHome
exec "set path+=". s:scriptsHome

command! -nargs=1 LoadFile exec 'source'. expand(s:scriptsHome). '/'. <args>

if (!exists("g:vscode"))
    LoadFile 'plugins.vim'

    LoadFile 'plugin-configs.vim'

    LoadFile 'look-and-feel.vim'

    LoadFile 'basics.vim'

    LoadFile 'tabs.vim'
         
    LoadFile 'search.vim'
       
    LoadFile 'statusline.vim'
     
    LoadFile 'custom-functions.vim'

    LoadFile 'autocommands.vim'

    " Also load, copy pasted scripts
    LoadFile "copy-pasted/hl-next.vim"

endif

LoadFile 'keymaps.vim'

" Color Highlighter
lua require'colorizer'.setup()

hi Normal guibg=NONE ctermbg=NONE
" hi Normal guibg=#2f3030 ctermbg=NONE
hi CursorLineNr guibg=NONE guifg=#00beff gui=bold
hi LineNr guibg=NONE guifg=#7e969e

