set nocompatible
syntax on
filetype plugin indent on

autocmd filetype sh setlocal smartindent ts=8 shiftwidth=8
autocmd filetype python setlocal si ts=4 sts=4 shiftwidth=4 expandtab
autocmd filetype c  setlocal cindent ts=8 shiftwidth=8

" cmd history
" set nohis
" set history 20

" backspace behavior
set backspace=indent,eol,start

" auto change directory
set autochdir

"file encoding
set fileencodings=utf-8,gbk,gb2312,gb18030
" set or change file encoding
"set fileencoding=utf-8

"set tab ..etc
set list
set listchars=tab:>-,extends:>,precedes:<

" text search setting
set hlsearch
set incsearch

" highligh (win) or under_line (linux) current line
" setlocal cursorline

set textwidth=79

"color scheme
"colorscheme desert

"no beep or flash
set vb t_vb=

" set maplearder
let mapleader=","
let g:mapleader=","

" status line
set cmdheight=1
set laststatus=2
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)

"buffer opt
map <silent> <leader>bd :bdelete<cr>
map <silent> <leader>bn :bnext<cr>
map <silent> <leader>bp :bprevious<cr>

"quick save
map <silent> <leader>w :w<cr>
map <silent> <leader>wa :wall<cr>

" code fold
set foldenable
set foldmethod=indent
autocmd filetype c setlocal foldmethod=syntax
set foldlevel=0
"new file, open file recent not fold
autocmd! BufNewFile,BufRead * setlocal nofoldenable
" zi toggled fold/unfold
" zm fold more
" zr fold reduce
" To automatically save and restore views for *.c files: (from :h loadview)
au BufWinLeave *.c mkview
au BufWinEnter *.c silent loadview

" remove all line-end spaces
nnoremap <silent> <leader>ds :%s/\s\+$//g<cr>
" highligh all line-end spaces
nnoremap <silent> <leader>hs :/\s\+$/<cr>

" window size
nnoremap <silent> <leader>wp CTRL-W +
nnoremap <silent> <leader>wd CTRL-W -

" move to head of character
nnoremap <silent> 0 ^

" ctags
"
let g:ctags_statusline=1

" cscope
"
set cscopetag
"set nocsverb
"set cscopetagorder=1

" autotags
" wrapper for ctags and cscope
" F4 index sources
" additional tags from other directory: go to target dir, press F3

" taglists
"
let Tlist_Inc_Winwidth=0
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_GainFocus_On_ToggleOpen = 1
map <silent> <leader>tl :TlistToggle<cr>

" mru
"
map <silent> <leader>rf :MRU<cr>

"nerdtree
"
map <silent> <leader>nt :NERDTreeToggle<cr>
map <silent> <leader>nf :NERDTreeFind<cr>
let NERDChristmasTree=1
let NERDTreeAutoCenter=1

"bufexplorer
"

"nerd_commenter
"
"cc comment current line
"cu uncoment current line
"cs comment sexily
"help nerd_commenter

"c.vim
"
" set 'c' and 'cpp' file only
let g:C_MapLeader=","

"a.vim - switch between .c and .h
"
":A "swap file

" neocomplcache (because configure is very long)
"
source ~/.neocomplcache_vimrc

" matchit
"

" lookupfile
"

" surround
"

" snipMate
"

" vundle
<<<<<<< HEAD
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
=======
>>>>>>> deb6233b788b9acf30d1c71baa5f6c868cf16c0d
"
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" https://github.com/xxx
"Bundle 'tpope/vim-fugitive'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'nelson/cscope_maps'
"Bundle 'shougo/neocomplcache'
" vim-scripts repos
" https://github.com/vim-scripts/xxx
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'autotags'
Bundle 'bufexplorer.zip'
Bundle 'cscope.vim'
Bundle 'ctags.vim'
Bundle 'mru.vim'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'taglist.vim'
Bundle 'c.vim'
Bundle 'neocomplcache'
Bundle 'matchit.zip'
Bundle 'a.vim'
Bundle 'surround.vim'
Bundle 'lookupfile'
Bundle 'genutils'
<<<<<<< HEAD
Bundle 'vim-ipython'
=======
"Bundle 'vim-ipython'
>>>>>>> deb6233b788b9acf30d1c71baa5f6c868cf16c0d
"Bundle 'snipMate'
"Bundle 'VimPdb'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...
"
filetype plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
