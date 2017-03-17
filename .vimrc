let g:ycm_rust_src_path = '~/Workspace/rustc-1.13.0/src'
set colorcolumn=81
set hidden

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>01 :1b<CR>
nnoremap <Leader>02 :2b<CR>
nnoremap <Leader>03 :3b<CR>
nnoremap <Leader>04 :4b<CR>
nnoremap <Leader>05 :5b<CR>
nnoremap <Leader>06 :6b<CR>
nnoremap <Leader>07 :7b<CR>
nnoremap <Leader>08 :8b<CR>
nnoremap <Leader>09 :9b<CR>
nnoremap <Leader>0 :10b<CR>
let i = 1
while i < 100
  execute "nnoremap <Leader>" . i . " :" . i . "b<CR>"
  let i += 1
endwhile
" It's useful to show the buffer number in the status line.
"set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

map <c-p> :FZF<CR>

set rtp+=/usr/local/opt/fzf
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

set ff=unix
map <c-y><c-f> :YcmCompleter FixIt<CR>
let g:ycm_always_populate_location_list = 1
let g:ycm_confirm_extra_conf = 0
set ignorecase
set smartcase
let g:ycm_autoclose_preview_window_after_insertion = 1
map <c-n> :NERDTreeToggle %<CR>
set hlsearch

filetype plugin on
let g:ycm_global_ycm_extra_conf ='~/.vim/.ycm_extra_conf.py'
set smartindent
set backspace=indent,eol,start
syntax on

"let g:ctrlp_cmd = 'CtrlPMixed'
"let g:ctrlp_working_path_mode = 'c'
"set runtimepath^=~/.vim/bundle/ctrlp.vim

set shiftwidth=2
set expandtab " convert tab to spaces
set smarttab
set nu
set clipboard=unnamed
set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'junegunn/fzf'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/localrc.vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'ternjs/tern_for_vim'
Plugin 'othree/yajs.vim'
Plugin 'fatih/vim-go'
Plugin 'easymotion/vim-easymotion'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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

augroup ProjectSetup
  au!
  au BufRead,BufEnter *.gdb set expandtab! shiftwidth=8
  "au BufRead,BufEnter ~/Workspace/competitive-programming/* set shiftwidth=4
  au BufRead,BufEnter *.sjs setf javascript
  au BufRead,BufEnter *.jsm setf javascript
  au BufRead,BufEnter *.go set expandtab! shiftwidth=8
augroup END

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
