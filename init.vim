au GUIEnter * simalt ~x
set hls
set is
set cb=unnamed
set ts=4
set sw=4
set si
cd /home/doublebrackets/everything

set backspace=indent,eol,start

function! RunPython()
    let filename = expand('%')
    execute 'vsplit | terminal python3 ' . filename
endfunction

nnoremap <F9> :call RunPython()<CR>

set clipboard=unnamedplus

set nu

call plug#begin('~/.vim/plugged')
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'scrooloose/nerdtree'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'vim-airline/vim-airline'
"Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
"Plug 'bfrg/vim-cpp-modern'
call plug#end()

syntax enable
colorscheme gruvbox
