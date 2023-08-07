" Vundle
" https://github.com/VundleVim/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" run :PluginUpdate after adding any plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" well-known git frontend
Plugin 'tpope/vim-fugitive'
" git log viewer
Plugin 'junegunn/gv.vim'
Plugin 'cohama/agit.vim'
Plugin 'https://github.com/Shougo/unite.vim.git'
Plugin 'git://github.com/kmnk/vim-unite-giti.git'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" Allow per-tab cd(current directory)
Plugin 'kana/vim-tabpagecd'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" agit.vim
let g:agit_enable_auto_show_commit = 1

" gtags
map <C-g> :Gtags 
"map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" indenting
" see https://www.cs.oberlin.edu/~kuperman/help/vim/indenting.html
: set tabstop=8
" : set expandtab
" : set shiftwidth=4
: set autoindent
: set smartindent
: set cindent
: set paste

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=Red term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline" Spelling


" auto complete
au BufRead /tmp/mutt* source ~/.mutt/address-search.vim

" statusline
" http://stackoverflow.com/questions/5375240/a-more-useful-statusline-in-vim
set laststatus=2 "always enable status line
set statusline=
"set statusline +=%=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%2*%r%*                "modified flag
""set statusline +=%=%1*%5l%*             "current line
"set statusline +=%1*%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor
set statusline +=\ %n\ %*            "buffer number
set statusline +=%{&ff}%*            "file format
set statusline +=%y%*                "file type
set statusline +=\ %<%F%*            "full path
set statusline +=%m%*                "modified flag
set statusline +=%r%*                "modified flag
set statusline +=%=%5l%*             "current line
set statusline +=/%L%*               "total lines
set statusline +=%4v\ %*             "virtual column number
set statusline +=0x%04B\ %*          "character under cursor

hi clear StatusLine
"hi StatusLine ctermfg=black ctermbg=white
hi StatusLine ctermfg=black ctermbg=green
hi StatusLineNC term=reverse ctermfg=red ctermbg=white
"Color scheme
hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222
" Cursorline
" set cursorline
hi cursorline ctermfg=black ctermbg=grey

" PDF viewer
" http://vim.wikia.com/wiki/Open_PDF_files
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

" Local language
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set fileformats=unix,dos,mac
