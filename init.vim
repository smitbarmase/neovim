" General Settings
set scrolloff=8
set mouse=a
set clipboard=unnamedplus
set fileencoding=utf-8
set nobackup
set nowritebackup
set noswapfile
set ignorecase
set number
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set termguicolors
set undofile
set nowrap
set updatetime=300
set noshowmode
set noruler

" Select all
map <C-a> <esc>ggVG<CR>

" Append template to new C++ files
autocmd BufNewFile *.cpp 0r ~/cp/base.cpp

" Execute run.sh on current file
let g:file_path = expand('%:p') 
function Run()
  botright new
  exec "resize 20"
  let run = "bash ~/cp/run.sh " . g:file_path
  call termopen(run)
  set nonumber
  set norelativenumber
  startinsert
endfunction

nnoremap <C-CR> :call Run()<CR>

" Plugins
call plug#begin()
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

" Theme
let g:tokyonight_style = "night"
colorscheme tokyonight
