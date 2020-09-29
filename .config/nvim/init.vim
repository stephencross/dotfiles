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

let mapleader=" "

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

" NERDTree
let NERDTreeShowHidden=1

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Better tab experience - from https://webdevetc.com/
     
map <leader>tn :tabnew<cr>
map <leader>t<leader> :tabnext
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

"DEBUGGING:
"----------
let g:vdebug_keymap = {
\    "run" : "<Leader>/",
\    "run_to_cursor" : "<Down>",
\    "step_over" : "<Up>",
\    "step_into" : "<Left>",
\    "step_out" : "<Right>",
\    "close" : "q",
\    "detach" : "<F7>",
\    "set_breakpoint" : "<Leader>s",
\    "eval_visual" : "<Leader>e"
\}

" Allows Vdebug to bind to all interfaces.
let g:vdebug_options = {}

" Stops execution at the first line.
let g:vdebug_options['break_on_open'] = 1
let g:vdebug_options['max_children'] = 128

" Use the compact window layout.
let g:vdebug_options['watch_window_style'] = 'compact'

" Because it's the company default.
let g:vdebug_options['ide_key'] = 'PHPSTORM'


" Need to set as empty for this to work with Vagrant boxes.
let g:vdebug_options['server'] = ""


