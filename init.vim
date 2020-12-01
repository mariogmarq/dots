call plug#begin('~/.vim/plugged')

"" Themes
Plug 'ghifarit53/tokyonight-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline-themes'

"" Language specific
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
Plug 'rhysd/vim-clang-format'

"" Tools
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'townk/vim-autoclose'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'
Plug 'honza/vim-snippets'

call plug#end()

set termguicolors

" let g:tokyonight_style = 'storm' " available: night, storm
" let g:tokyonight_enable_italic = 1
let ayucolor="mirage" " for mirage version of theme

colorscheme ayu
" Custom config
syntax on
set nu rnu
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
map <C-SPACE> :FZF<CR>
map <C-e> :YcmCompleter GoToDeclaration<CR>
map <C-t> :YcmCompleter GetType<CR>
map <C-d> :YcmCompleter GetDoc<CR>
autocmd BufEnter *.go map <C-i> :YcmCompleter GoToImplementation<CR>
autocmd BufEnter *.cpp map <C-i> :YcmCompleter GoToReferences<CR>
let g:AutoClosePreserveDotReg = 0
