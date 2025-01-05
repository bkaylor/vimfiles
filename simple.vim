" Goes in Program Files\Vim\vimfiles\colors

hi clear
syntax reset
let g:colors_name = "simple2"

set nohlsearch

let normalfg = "#EFE6DD"
let normalbg = "#231F20"
let commentfg = "#FBFF47"
let todofg = "#B5351E"
let visualbg = "#2770DD"

exe 'hi Comment  gui=NONE      guifg=' . commentfg . ' guibg=NONE'
exe 'hi Normal   gui=NONE      guifg=' . normalfg . ' guibg=' . normalbg
exe 'hi Search   gui=NONE      guifg=' . normalbg . ' guibg=' . normalfg
exe 'hi Todo     gui=underline guifg=' . todofg . ' guibg=NONE'
exe 'hi Visual   gui=NONE      guifg=NONE    guibg=' . visualbg
exe 'hi NonText  gui=NONE      guifg=' . commentfg . ' guibg=NONE'

hi Constant   gui=NONE guifg=NONE
hi Identifier gui=NONE guifg=NONE
hi Function   gui=NONE guifg=NONE
hi Statement  gui=NONE guifg=NONE
hi PreProc    gui=NONE guifg=NONE
hi Type	      gui=NONE guifg=NONE
hi Special    gui=NONE guifg=NONE
hi Delimiter  gui=NONE guifg=NONE
