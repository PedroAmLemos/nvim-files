require('telescope').setup{
	defaults = {
	  vimgrep_arguments = {
		'rg',
		'--color=never',
		'--no-heading',
		'--with-filename',
		'--line-number',
		'--column',
		'--smart-case'
	  },
	  prompt_position = "top",
	  prompt_prefix = "> ",
	  selection_caret = "> ",
	  entry_prefix = "  ",
	  initial_mode = "insert",
	  selection_strategy = "row",
	  sorting_strategy = "ascending",
	  layout_strategy = "horizontal",
	  layout_defaults = {
		horizontal = {
		  mirror = false,
		},
		vertical = {
		  mirror = true,
		},
	  },
	  file_sorter =  require'telescope.sorters'.get_fzy_file,
	  file_ignore_patterns = {'env', '__pycache__', 'plugged', 'undodir', 'pack'},
	  generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
	  shorten_path = false,
	  winblend = 0,
	  width = 0.75,
	  preview_cutoff = 120,
	  results_height = 1,
	  results_width = 0.8,
	  border = {},
	  borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
	  color_devicons = true,
	  use_less = true,
	  set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
	  file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
	  grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
	  qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  
	  -- Developer configurations: Not meant for general override
	  buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
	},
	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
			case_mode = "smart_case"
		}
	}
  }
require('telescope').load_extension('octo')
require('telescope').load_extension('fzy_native')
require('telescope').load_extension('ultisnips')
require('telescope').load_extension('project')
--
-- Implement delta as previewer for diffs

local previewers = require('telescope.previewers')
local builtin = require('telescope.builtin')
local conf = require('telescope.config')
local M = {}

local delta = previewers.new_termopen_previewer {
  get_command = function(entry)
    -- this is for status
    -- You can get the AM things in entry.status. So we are displaying file if entry.status == '??' or 'A '
    -- just do an if and return a different command
    if entry.status == '??' or 'A ' then
      return { 'git', '-c', 'core.pager=delta', '-c', 'delta.side-by-side=false', 'diff', entry.value }
    end

    -- note we can't use pipes
    -- this command is for git_commits and git_bcommits
    return { 'git', '-c', 'core.pager=delta', '-c', 'delta.side-by-side=false', 'diff', entry.value .. '^!' }

  end
}

local M = {}

M.buffer_lines = function()
  require('telescope.builtin').current_buffer_fuzzy_find({
	prompt_title = "< buffer lines >",
	attach_mappings = function(prompt_bufnr, map)

	  -- Paste line
	  map('i', '<C-f>', function(bufnr)
		local content = require('telescope.actions.state').get_selected_entry()
		require('telescope.actions').close(prompt_bufnr)
		vim.fn.append(vim.fn.line('.'), content.display)
		vim.fn.execute('norm j')
	  end)

	  return true
	end
  })
end

M.search_dotfiles = function()
	require('telescope.builtin').find_files({
		shorten_path = true,
		prompt_prefix = '📄 ',
		prompt_title = "< VimRC >",
		cwd = '~/.config/nvim/',
		height = 10,
		layout_strategy = 'horizontal',
		layout_options = {
			preview_widht = 0.75,
		},
	})
end
M.my_git_commits = function(opts)
  opts = opts or {}
  opts.previewer = delta

  builtin.git_commits(opts)
end

M.my_git_bcommits = function(opts)
  opts = opts or {}
  opts.previewer = delta

  builtin.git_bcommits(opts)
end

M.my_git_status = function(opts)
  opts = opts or {}
  opts.previewer = delta

  builtin.git_status(opts)
end

M.my_note = function(opts)
  builtin.live_grep { prompt_title = ' Note ', cwd = '~/Note' }
end

M.project_files = function()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require'telescope.builtin'.git_files, opts)
  if not ok then require'telescope.builtin'.find_files(opts) end
end
return M
