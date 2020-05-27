set nocompatible              " be iMproved, required
filetype off                  " required

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
Plug 'inkarkat/vim-spellcheck'
Plug 'vimwiki/vimwiki'
call plug#end()

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 100

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = '#83a598'
