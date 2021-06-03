"Plugins 
call plug#begin('~/.config/nvim/plugged')
	Plug 'shaunsingh/nord.nvim'
	" LSP
	Plug 'onsails/lspkind-nvim'	" adds pictograms to neovim built-in lsp 
	Plug 'neovim/nvim-lspconfig'
	Plug 'glepnir/lspsaga.nvim'
	Plug 'ray-x/lsp_signature.nvim'

	"Plug 'folke/which-key.nvim'
	Plug 'marcushwz/nvim-workbench'
	
	" Autocomplete and syntax 
	Plug 'hrsh7th/nvim-compe'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'windwp/nvim-ts-autotag'
	Plug 'tpope/vim-surround'
	Plug 'preservim/nerdcommenter'
	Plug 'jiangmiao/auto-pairs'
	Plug 'alvan/vim-closetag'

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
	Plug 'sudormrfbin/cheatsheet.nvim'

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
	Plug 'ahmedkhalf/lsp-rooter.nvim'
	Plug 'liuchengxu/vista.vim'
	Plug 'justinmk/vim-sneak'
	Plug 'kevinhwang91/nvim-hlslens'
	Plug 'windwp/nvim-spectre'
	Plug 'kevinhwang91/nvim-bqf'
	Plug 'preservim/tagbar'
	Plug 'folke/todo-comments.nvim'
	Plug 'ahmedkhalf/lsp-rooter.nvim'

	" Visuals
	Plug 'itchyny/vim-cursorword'
	Plug 'p00f/nvim-ts-rainbow'
	Plug 'glepnir/dashboard-nvim'

	Plug 'BurntSushi/ripgrep'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" Debugger
	Plug 'szw/vim-maximizer'
call plug#end()
lua require'lsp_signature'.on_attach()

"lua << EOF
  "require("which-key").setup {
    "-- your configuration comes here
    "-- or leave it empty to use the default settings
    "-- refer to the configuration section below
  "}
"EOF
require'nvim-treesitter.configs'.setup {
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  }
}
EOF

packadd! vimspector
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:workbench_storage_path = getenv("HOME") . "/Documents/Notes/"
