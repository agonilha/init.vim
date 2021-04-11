" INIT.VIM

let mapleader = " "

source $HOME/.config/nvim/configs/sets.vim
source $HOME/.config/nvim/configs/remaps.vim

" PLUGINS

call plug#begin('~/.config/nvim/plugged')
	"" Test
	"" Plug 'akinsho/nvim-bufferline.lua'
	"" Plug 'kyazdani42/nvim-web-devicons'

	"" Still aren't configured
	Plug 'luochen1990/rainbow'
	Plug 'preservim/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'itchyny/lightline.vim'
	Plug 'mengelbrecht/lightline-bufferline'
	"" Plug 'nvim-telescope/telescope.nvim'
	"Plug 'mbbill/undotree'
	"" Plug 'mattn/emmet-vim'
	"" Plug 'metakirby5/codi.vim'

	"" Configured, but I want to change something
	"Plug 'justinmk/vim-sneak'

	"" Already configured
	Plug 'jiangmiao/auto-pairs'
	Plug 'preservim/nerdcommenter'
	Plug 'norcalli/nvim-colorizer.lua'

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
	"Plug 'hrsh7th/nvim-compe'
	"Plug 'SirVer/ultisnips'
	"Plug 'honza/vim-snippets'
	"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

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
source $HOME/.config/nvim/plug-config/auto-pairs.vim
source $HOME/.config/nvim/plug-config/lightline.vim
source $HOME/.config/nvim/plug-config/nerdcommenter.vim
source $HOME/.config/nvim/plug-config/rainbow.vim

"source $HOME/.config/nvim/plug-config/auto-pairs.vim
"source $HOME/.config/nvim/plug-config/undotree.vim
"source $HOME/.config/nvim/plug-config/lightline_powerful.vim
"" source $HOME/.config/nvim/plug-config/emmet.vim
"source $HOME/.config/nvim/plug-config/rainbow.vim
"source $HOME/.config/nvim/plug-config/ultisnips.vim
"luafile $HOME/.config/nvim/plug-config/treesitter.lua
"luafile $HOME/.config/nvim/plug-config/lsp-config.lua
"luafile $HOME/.config/nvim/plug-config/compe.lua