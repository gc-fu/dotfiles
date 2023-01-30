syntax on
set nocompatible
set ignorecase
set smartcase
set noerrorbells
set undofile
set undodir="~/.vim/undodir/"
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set nu
set nowrap
set relativenumber
set smartcase
set noswapfile
set hidden
set nobackup
set nowritebackup
set incsearch
set cursorline
set cursorcolumn
set colorcolumn=80
set hlsearch

highlight ColorColumn ctermbg=0 guibg=lightgrey



call plug#begin()
" For use with git
Plug 'tpope/vim-fugitive'

" commenter
Plug 'preservim/nerdcommenter'

" pairs
Plug 'jiangmiao/auto-pairs'

" Theme for this vim
Plug 'morhetz/gruvbox'

" Provide plugin support for other plugins
Plug 'nvim-lua/plenary.nvim'

" Ctrl-p support, tag should be the same with neovim version
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope.nvim'

Plug 'itchyny/lightline.vim'

" Use S to view the available buffer in normal mode
Plug 'Yohannfra/Nvim-Switch-Buffer'

Plug 'godlygeek/tabular'

" Possible plugin
Plug 'editorconfig/editorconfig-vim'

" surround with quote
Plug 'tpope/vim-surround'

call plug#end()

colorscheme gruvbox
set background=dark


"define the mapleader to space
let mapleader = " "




"map it in the insert mode, so that one can use jj to escape 
inoremap jj <Esc>
nnoremap <Leader>h :wincmd h<Esc>
nnoremap <Leader>j :wincmd j<Esc>
nnoremap <Leader>k :wincmd k<Esc>
nnoremap <Leader>l :wincmd l<Esc>
nnoremap <Leader>s :wincmd s<Esc>
nnoremap <Leader>v :wincmd v<Esc>


"close the file quickly
nnoremap <Leader>q :q<Esc>


"mapping crtl - l to put the current line at middle of screen
"nnoremap <c-l> zz<CR>

"save all files
nnoremap <Leader>sa :wa<CR>

"inoremap <C-b> <Left>
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-l> <Right>
inoremap nn <C-o>o




"Telescope command-line settings
nnoremap <c-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>


" switchbuf
nmap <silent> S :SwitchBuffer<cr>

set switchbuf=usetab
let g:switch_buffer_hide_numbers = 1


"required by nerdcommenter
filetype plugin on

"lightline configuration
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

