set nocompatible

if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
	execute '!curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'scrooloose/nerdtree'
	Plug 'liuchengxu/vista.vim'
	Plug 'crusoexia/vim-monokai'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'ryanoasis/vim-devicons'

	Plug 'w0rp/ale'
	
	Plug 'prabirshrestha/asyncomplete.vim'

	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
call plug#end()

filetype plugin on
filetype plugin indent on
syntax enable
syntax on
set encoding=utf-8
set title
set list
set listchars=tab:\¦\ ,nbsp:␣,trail:·
set number
set ruler
set cursorline
set hidden
set ignorecase
set smartcase
set spelllang=en_gb,es_ar
set nowrap
set path=**
set incsearch
set hls
set wildmenu
set wildmode=longest,list,full
set completeopt=menuone,noinsert,noselect,preview
set previewheight=5
set termguicolors
silent! colorscheme monokai

let g:airline_theme = 'murmur'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1

map <C-n> :NERDTreeToggle<CR>
map <C-m> :Vista!!<CR>
