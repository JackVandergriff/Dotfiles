set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/goyo.vim'

" Tpope Stuff
Plugin 'tpope/vim-commentary'

"File utils
Plugin 'majutsushi/tagbar'

"Notes
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

call vundle#end()

filetype plugin indent on

set number
set relativenumber
set scrolloff=3
set lazyredraw
set tabstop=4
set shiftwidth=4
set softtabstop=4

let g:airline_theme='crossbow'

"QOL changes
let mapleader='`'

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==<Paste>
nnoremap <A-g> :Goyo<CR>

imap <Leader>p <Esc>pi<Right>

cmap s! w !sudo tee > /dev/null %

autocmd FileType tex imap <buffer> <Leader>m \(\)<Left><Left>
autocmd FileType tex noremap <buffer> <Leader>r :w<Return>:!pdflatex %<Return><Esc>


