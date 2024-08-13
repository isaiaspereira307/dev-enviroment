call plug#begin()

Plug 'nvim-tree/nvim-web-devicons'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'nvie/vim-flake8'
Plug 'python-mode/python-mode'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'github/copilot.vim'
Plug 'zxqfl/tabnine-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-bufferline'
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
Plug 'apzelos/blamer.nvim'

call plug#end()


set nu!
set mouse=a
set title
set cursorline
set encoding=utf-8
set termwinsize=10x0
set splitbelow
syntax on
colorscheme gruvbox-material
set background=dark
set foldenable
set foldmethod=indent
set clipboard=unnamed
" zo - open fold
" zc - close fold
" zM - close all fold
" zR - Unfold all

let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_better_performance = 1
let g:airline_theme = 'gruvbox_material'
let g:bufferline_echo = 1
let g:bufferline_modified = '+'

let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_show_in_visual_modes = 0


map <C-s> :write<CR>
map <C-@> :bel terminal<CR>
map <C-w> :tabn<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
