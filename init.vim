set nocompatible
filetype off

set rtp+=$HOME/AppData/Local/nvim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'junegunn/seoul256.vim'
Plugin 'tpope/vim-surround'
Plugin 'mhinz/vim-signify'
call vundle#end()
filetype plugin indent on

let g:signify_vcs_list = [ 'git' ]
let g:python_highlight_builtin_funcs=1
let g:python_highlight_exceptions=1
let g:python_highlight_string_format=1
let g:python_highlight_string_formatting=1

nnoremap <leader><esc> :syntax sync fromstart<CR>

"let g:seoul256_background = 256
colo marina
"set background=light

set showcmd
set showmatch
set showmode
set nohlsearch
set incsearch
set ignorecase
set smartcase
set inccommand=nosplit

set ruler
" set number
" set rnu
set formatoptions+=o
set textwidth=0
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=2

set noerrorbells
set modeline
set linespace=0
set nojoinspaces

set splitbelow
set splitright

set nostartofline

if &listchars ==# 'eol:$'
    set listchars=tab:>.,trail:.,extends:#,nbsp:.
endif
set list

highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/

" set cursorline

set mouse=a
set pastetoggle=<F2>

set completeopt=menu,longest,preview
set wildmode=list:longest
set wildmenu
set wildignore=*.swp,*.pyc,*.dll,*.exe,*.bak

set gdefault

syntax on
set t_Co=256

" macros:
" @y - copy to clipboard
" @p - paste from clipboard

nno , za
nno <expr> zu "zz" . (winheight(0) / 4) . "<C-e>"
nno <expr> zl "zz" . (winheight(0) / 4) . "<C-Y>"

nno <F2> :call PyGetClass()<CR>
function PyGetClass()
    exe "normal! mt"
    execute '?^class'
    echo getline(".")
    exe "'t"
endfunction

nno <F3> :set hlsearch!<CR>
nno <F5> :tabnext<CR>

nno <F6> :call GitSession('save')<CR>
nno <F8> :call GitSession('load')<CR>
function GitSession(action)
    let git_session=system('git rev-parse --abbrev-ref HEAD | sed "s/.*LINK-\([0-9]\+\).*/~\\\vimsessions\\\\\1.vim/"')
    if a:action == "save"
        exe "mksession! " . git_session
    elseif a:action == "load"
        exe "source " . git_session
    endif
endfunction

nno <F4> :FZF<CR>

nno gv <C-v> :vsp<CR>:FZF<CR> <C-w>=
nno gs <C-v> :sp<CR>:FZF<CR> <C-w>=

nno <C-b> :! git blame %<CR>

set statusline=%f
set statusline+=\ %h%m%r%#warningmsg#
set statusline+=%*
set statusline+=%=%-14.(%l,%c%V%)\ %P

" replaced by vim python pep8 indent plugin
"function! PythonEnterFunc()
"  let l:li = getline('.')
"  execute "normal! a\<Cr>"
"  if l:li =~ '([^)]*$'
"    let l:pos = stridx(l:li, '(') + 1
"    for i in range(l:pos)
"      execute "normal! a\<Space>"
"    endfor
"  endif
"endfunction
"au FileType python inoremap <Cr> <Esc>:call PythonEnterFunc()<CR>a
