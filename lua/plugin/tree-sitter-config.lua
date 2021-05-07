require'nvim-treesitter.configs'.setup {
	autotag = {
		enable = true
	},
    ensure_installed = {
      "c",
      "python",  -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	  "cpp",
	  "typescript",
	  "javascript"
    },
    highlight = {
      enable = true,              -- false will disable the whole extension
    },
  }
