call plug#begin('~/.vim/plugged')

Plug 'ghifarit53/tokyonight-vim'
Plug 'co1ncidence/javacafe.vim'
Plug 'sainnhe/edge'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'townk/vim-autoclose'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'valloric/youcompleteme'
Plug 'rhysd/vim-clang-format'

call plug#end()

set termguicolors

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

" Custom config
syntax on
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch	
set visualbell
 
set hlsearch
set smartcase
set ignorecase
set incsearch
 
set autoindent
set cindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
 
set ruler	
set undolevels=1000
set backspace=indent,eol,start


" KeyBindings
map <C-s> :w<CR>
autocmd BufEnter *.go map <C-s> :GoImports<CR>:GoFmt<CR>:w<CR>
autocmd BufEnter *.cpp map <C-s> :ClangFormat<CR>:w<CR>
autocmd BufEnter *.c map <C-s> :ClangFormat<CR>:w<CR>
autocmd BufEnter *.h map <C-s> :ClangFormat<CR>:w<CR>
map <C-a> ggvG$
map <C-q> "+y
map ; :NERDTree<CR> 
map <SPACE> /
map <C-e> :YcmCompleter GoToDeclaration<CR>
map <C-t> :YcmCompleter GetType<CR>
map <C-d> :YcmCompleter GetDoc<CR>
autocmd BufEnter *.go map <C-i> :YcmCompleter GoToImplementation<CR>
autocmd BufEnter *.cpp map <C-i> :YcmCompleter GoToReferences<CR>


