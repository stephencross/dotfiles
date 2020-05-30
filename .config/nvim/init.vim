filetype off                  " required
syntax on

set nocompatible              " be iMproved, required
set noerrorbells
set tabstop=2 softtabstop=4
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set undodir=~/.vim/undodir
set undofile

highlight ColorColumn ctermbg=0 guibg=lightgrey


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vifm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/limelight.vim'
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'
Plug 'vifm/vifm'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
" PHP Auto complete
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'phpactor/ncm2-phpactor'

" enable ncm2 for all buffersi
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
call plug#end()

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 100

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = '#83a598'

" Wrap
command! -nargs=* Wrap set wrap linebreak nolist

colorscheme gruvbox
set background=dark

let mapleader = " "

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
