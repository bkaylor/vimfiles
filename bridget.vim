" Goes in Program Files\Vim\vimfiles\colors
" <palette>
"   <color name="Chestnut" hex="A44C3F" r="164" g="76" b="63" />
"   <color name="Dun" hex="E4C8A9" r="228" g="200" b="169" />
"   <color name="Umber" hex="735C49" r="115" g="92" b="73" />
"   <color name="Raisin black" hex="2B2622" r="43" g="38" b="34" />
"   <color name="Air superiority blue" hex="7A9CB7" r="122" g="156" b="183" />
"   <color name="Saffron" hex="F4C94C" r="244" g="201" b="76" />
" </palette>

hi clear
syntax reset
let g:colors_name = "bridget"

" Chestnut color palette
let s:chestnut      = "#A44C3F"
let s:dun           = "#E4C8A9"
let s:umber         = "#735C49"
let s:raisin_black  = "#2B2622"
let s:air_blue      = "#7A9CB7"
let s:saffron       = "#F4C94C"

" Main highlight groups
exe 'hi Comment  gui=NONE      guifg=' . s:umber . '       guibg=NONE'
exe 'hi Normal   gui=NONE      guifg=' . s:dun . '         guibg=' . s:raisin_black
exe 'hi Search   gui=NONE      guifg=' . s:dun . '         guibg=' . s:chestnut
exe 'hi Todo     gui=underline guifg=' . s:saffron . '    guibg=' . s:raisin_black
exe 'hi Visual   gui=NONE      guifg=' . s:dun . '         guibg=' . s:umber
exe 'hi NonText  gui=NONE      guifg=' . s:umber . '       guibg=NONE'

" Syntax highlighting groups with Bridget styling

" Numbers, strings, character literals: 42, \"hello\", 'a'
exe 'hi Constant   gui=NONE guifg=' . s:air_blue . '       guibg=NONE'

" Variable names, function names: myVar, buffer
exe 'hi Identifier gui=NONE guifg=' . s:dun . '           guibg=NONE'

" Function calls and definitions: printf(), main()
exe 'hi Function   gui=NONE guifg=' . s:air_blue . '       guibg=NONE'

" Keywords: if, else, for, while, return, break, continue
exe 'hi Statement  gui=bold guifg=' . s:chestnut . '       guibg=NONE'

" Preprocessor directives: #include, #define, #ifdef
exe 'hi PreProc    gui=NONE guifg=' . s:air_blue . '       guibg=NONE'

" Data types: int, char, float, double, struct, void
exe 'hi Type       gui=bold guifg=' . s:chestnut . '          guibg=NONE'

" Special characters: \n, \t, format specifiers like %d, %s
exe 'hi Special    gui=NONE guifg=' . s:chestnut . '       guibg=NONE'

" Brackets, braces, parentheses: (), {}, []
exe 'hi Delimiter  gui=NONE guifg=' . s:umber . '          guibg=NONE'
