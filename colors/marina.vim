" Vim color file
" marina
" Created by  with ThemeCreator (https://github.com/mswift42/themecreator)

hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
let g:colors_name = "marina"


" Define reusable colorvariables.
let s:bg="#343d46"
let s:fg="#d8dee9"
let s:fg2="#c7ccd6"
let s:fg3="#b5bac4"
let s:fg4="#a4a9b1"
let s:bg2="#444d55"
let s:bg3="#545c64"
let s:bg4="#656c72"
let s:keyword="#c594c5"
let s:builtin="#6699cc"
let s:const= "#f9ae57"
let s:comment="#a7adba"
let s:func="#5eb3b3"
let s:str="#99c794"
let s:type="#f9ae57"
let s:var="#d8dee9"
let s:warning="#ec5e67"
let s:warning2="#f97b57"
let s:strmark="#57b3a4"

exe 'hi Normal guifg='s:fg' guibg='s:bg 
exe 'hi Cursor guifg='s:bg' guibg='s:fg 
exe 'hi Cursorline  guibg='s:bg2 
exe 'hi CursorColumn  guibg='s:bg2 
exe 'hi ColorColumn  guibg='s:bg2 
exe 'hi SignColumn guibg='s:bg2
exe 'hi LineNr guifg='s:fg2' guibg='s:bg2 
exe 'hi VertSplit guifg='s:fg3' guibg='s:bg3 
exe 'hi MatchParen guibg='s:warning2' guifg='s:comment'  gui=bold'
exe 'hi StatusLine guifg='s:fg2' guibg='s:bg3' gui=bold'
exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
exe 'hi PmenuSel  guibg='s:bg3 
exe 'hi IncSearch guifg='s:bg' guibg='s:keyword 
exe 'hi Search   gui=underline'
exe 'hi Directory guifg='s:const  
exe 'hi Folded guifg='s:fg4' guibg='s:bg 

exe 'hi Boolean guifg='s:const  
exe 'hi Character guifg='s:const  
exe 'hi Comment guifg='s:comment  
exe 'hi Conditional guifg='s:keyword  
exe 'hi Constant guifg='s:const  
exe 'hi Define guifg='s:keyword  
exe 'hi DiffAdd guifg=#f8f8f8 guibg=#46830c gui=bold'
exe 'hi DiffDelete guifg=#f8f8f8  guibg=#ff0000'
exe 'hi DiffChange guifg=#f8f8f8 guibg=Blue'
exe 'hi DiffText guifg=#f8f8f8 guibg=#080808 gui=bold'
exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg2' gui=bold'
exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2 
exe 'hi Float guifg='s:const  
exe 'hi Function guifg='s:func  
exe 'hi Identifier guifg='s:type'  gui=italic'
exe 'hi Keyword guifg='s:keyword'  gui=bold'
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:bg4' guibg='s:bg 
exe 'hi Number guifg='s:const  
exe 'hi Operater guifg='s:keyword  
exe 'hi PreProc guifg='s:keyword  
exe 'hi Special guifg='s:fg  
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2 
exe 'hi Statement guifg='s:keyword  
exe 'hi StorageClass guifg='s:type'  gui=italic'
exe 'hi String guifg='s:str  
exe 'hi Tag guifg='s:keyword  
exe 'hi Title guifg='s:fg'  gui=bold'
exe 'hi Todo guifg='s:fg2'  gui=inverse,bold'
exe 'hi Type guifg='s:type 
exe 'hi Underlined   gui=underline'

" Python Highlighting
exe 'hi pythonBuiltinFunc guifg='s:builtin
exe 'hi pythonBoolean guifg='s:warning
exe 'hi pythonBuiltinObj guifg='s:builtin
exe 'hi pythonClass guifg='s:type
exe 'hi pythonSelf guifg='s:warning
exe 'hi pythonFunction guifg='s:func
exe 'hi pythonExClass guifg='s:builtin
exe 'hi pythonOperator guifg='s:warning2
exe 'hi pythonFunctionParameters guifg='s:type
exe 'hi pythonClassParameters guifg='s:func

" Go Highlighting
exe 'hi goBuiltins guifg='s:builtin

" Javascript Highlighting
exe 'hi jsBuiltins guifg='s:builtin
exe 'hi jsFunction guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects guifg='s:type
exe 'hi jsAssignmentExps guifg='s:var

" Html Highlighting
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

" Markdown Highlighting
exe 'hi mkdCode guifg='s:builtin


