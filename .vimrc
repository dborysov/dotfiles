set nocompatible              " be iMproved, required
set number
set tabstop=2
set expandtab
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" Keep Plugin commands between vundle#begin/end.

call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
set background=dark
colorscheme torte

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:indent_guides_enable_on_vim_startup = 1

let g:airline_theme='simple'

nmap <F8> :TagbarToggle<CR>
