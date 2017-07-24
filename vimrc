runtime bundle/vim-pathogen/autoload/pathogen.vim
runtime macros/matchit.vim
execute pathogen#infect()
call plug#begin()

" vim-plug plugin manager
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()

set visualbell " flash screen instead of sounding a beep
set nostartofline
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
set ic " ignore case
set incsearch " search as characters are entered
set hlsearch " highlight matches
set wildmenu
set hidden
set number
syntax on

filetype plugin indent on

nmap =j :%!python -m json.tool<CR>
