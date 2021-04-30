"Plugins 
call plug#begin('~/.config/nvim/plugged')
	" LSP
	Plug 'onsails/lspkind-nvim'	" adds pictograms to neovim built-in lsp 
	Plug 'neovim/nvim-lspconfig'
	Plug 'glepnir/lspsaga.nvim'
	Plug 'ray-x/lsp_signature.nvim'

	"Plug 'folke/which-key.nvim'

	" Autocomplete and syntax 
	Plug 'hrsh7th/nvim-compe'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'tpope/vim-surround'
	Plug 'preservim/nerdcommenter'
	Plug 'jiangmiao/auto-pairs'

	" Icons
	Plug 'ryanoasis/vim-devicons'
	Plug 'kyazdani42/nvim-web-devicons'

	" Telescope
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-fzy-native.nvim'
	Plug 'nvim-telescope/telescope-project.nvim'
	Plug 'fhill2/telescope-ultisnips.nvim'
	Plug 'pwntester/octo.nvim'

	" Explorer
	Plug 'kyazdani42/nvim-tree.lua'

	" Git
	Plug 'kdheepak/lazygit.nvim'
	Plug 'tpope/vim-fugitive'
	Plug 'lewis6991/gitsigns.nvim'

	" Theme configuration
	Plug 'folke/tokyonight.nvim'
	Plug 'tiagovla/tokyodark.nvim'
	Plug 'morhetz/gruvbox'
	Plug 'romgrk/barbar.nvim'
	Plug 'itchyny/lightline.vim'
	Plug 'joshdick/onedark.vim'


	" Navegation
	" Plug 'simrat39/symbols-outline.nvim'
	Plug 'liuchengxu/vista.vim'
	Plug 'craigemery/vim-autotag'  " Update tags
	Plug 'justinmk/vim-sneak'
	Plug 'kevinhwang91/nvim-hlslens'
	Plug 'windwp/nvim-spectre'
	Plug 'kevinhwang91/nvim-bqf'
	Plug 'preservim/tagbar'

	" Visuals
	Plug 'itchyny/vim-cursorword'
	Plug 'p00f/nvim-ts-rainbow'
	Plug 'mhinz/vim-startify'

	Plug 'BurntSushi/ripgrep'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	
	" Adds indent line
	Plug 'lukas-reineke/indent-blankline.nvim', {'branch':'lua'}
call plug#end()
"lua require'lsp_signature'.on_attach()
"lua << EOF
  "require("which-key").setup {
    "-- your configuration comes here
    "-- or leave it empty to use the default settings
    "-- refer to the configuration section below
  "}
"EOF
lua << EOF
require'nvim-treesitter.configs'.setup {
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  }
}
EOF
