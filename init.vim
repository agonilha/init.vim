" INIT.VIM

let mapleader = " "

source $HOME/.config/nvim/before/sets.vim
source $HOME/.config/nvim/before/remaps.vim

" PLUGINS

call plug#begin('~/.config/nvim/plugged')
	"" Test
	"" Plug 'akinsho/nvim-bufferline.lua'
	"" Plug 'kyazdani42/nvim-web-devicons'

	"" Still aren't configured
	Plug 'luochen1990/rainbow'
	Plug 'preservim/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'jiangmiao/auto-pairs'
	Plug 'preservim/nerdcommenter'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'itchyny/lightline.vim'
	Plug 'mengelbrecht/lightline-bufferline'
	"" Plug 'nvim-telescope/telescope.nvim'
	Plug 'mbbill/undotree'
	"" Plug 'mattn/emmet-vim'
	"" Plug 'metakirby5/codi.vim'

	"" Configured, but I want to change something
	"Plug 'justinmk/vim-sneak'

	"" Already configured

	"" Colorscheme
	Plug 'joshdick/onedark.vim'
	"Plug 'beikome/cosme.vim'
	"Plug 'morhetz/gruvbox'
	"Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
	"Plug 'mhartington/oceanic-next'

    " NERDTree
	"Plug 'ryanoasis/vim-devicons'

    " Statusline

    " LSP
	"Plug 'neovim/nvim-lspconfig'
	"Plug 'glepnir/lspsaga.nvim'
	"Plug 'hrsh7th/nvim-compe'
	"Plug 'hrsh7th/vim-vsnip'
	"Plug 'SirVer/ultisnips'
	"Plug 'honza/vim-snippets'
	"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

	" Autocomplete and Language Servers
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mattn/emmet-vim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update'


	" Telescope
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'


call plug#end()

colorscheme onedark
"highlight Normal guibg=none
let g:lightline = {
	\'colorscheme':'onedark',
	\}
lua require'colorizer'.setup()

"Automatically deletes all  trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e


" SOURCES

"source $HOME/.config/nvim/plug-config/
source  $HOME/.config/nvim/before/auto-pairs.vim
source  $HOME/.config/nvim/before/lightline.vim
source  $HOME/.config/nvim/before/nerdcommenter.vim
source  $HOME/.config/nvim/before/rainbow.vim
luafile $HOME/.config/nvim/before/telescope.lua


source  $HOME/.config/nvim/coc/coc.vim
source  $HOME/.config/nvim/coc/coc-snippets.vim
luafile $HOME/.config/nvim/plug-config/treesitter.lua

"source  $HOME/.config/nvim/lsp-config/lsp-config.vim
"luafile $HOME/.config/nvim/lsp-config/compe.lua
"luafile $HOME/.config/nvim/lsp-config/lspsaga.lua
"luafile $HOME/.config/nvim/lsp-config/treesitter.lua

"source $HOME/.config/nvim/plug-config/auto-pairs.vim
"source $HOME/.config/nvim/plug-config/undotree.vim
"source $HOME/.config/nvim/plug-config/lightline_powerful.vim
"" source $HOME/.config/nvim/plug-config/emmet.vim
"source $HOME/.config/nvim/plug-config/rainbow.vim
"source $HOME/.config/nvim/plug-config/ultisnips.vim
"luafile $HOME/.config/nvim/plug-config/treesitter.lua
"luafile $HOME/.config/nvim/plug-config/lsp-config.lua
"luafile $HOME/.config/nvim/plug-config/compe.lua
