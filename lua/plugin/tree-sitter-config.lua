require'nvim-treesitter.configs'.setup {
    ensure_installed = {
      "c",
      "python",  -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	  "cpp",
    },
    highlight = {
      enable = true,              -- false will disable the whole extension
    },
  }
