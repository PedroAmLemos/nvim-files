"Tirar o highlitght 
nnoremap <leader>/ :let @/ =""<CR>

"Change cwd
nnoremap cd :cd %:p:h<CR>

"Tab para navegar no auto complete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
map <C-j> :cn<CR>
map <C-k> :cp<CR>

"system remaps
inoremap jk <esc>
inoremap kj <esc>

"=================================================================="
"Lsp remaps

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

"=================================================================="
"Lsp saga 

"Code action 
nnoremap <silent><leader>ac <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ac :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
"lsp provider to find the cursor word definition and reference
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
"show hover doc
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
"scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
"show signature help
nnoremap <silent>gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
"rename
nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
"preview definition
nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
"show
nnoremap <silent><leader>cd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
"jump diagnostic
nnoremap <silent> [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
"float terminal also you can pass the cli command in open_float_terminal function
nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR> 
tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>

"=================================================================="

"UltiSnips
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"


"=================================================================="

"NERDTree

"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-s> :NERDTreeFind<CR>

"=================================================================="
" Find files using Telescope command-line sugar.
nnoremap <leader>fs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>fb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>fgc :lua require('telescope.builtin').git_commits()<CR>
nnoremap <leader>fgs :lua require('telescope.builtin').git_status()<CR>
nnoremap <leader>fl :lua require('plugin.telescope').buffer_lines()<CR>
nnoremap <leader>vrc :lua require('plugin.telescope').search_dotfiles()<CR>
nnoremap <leader>us :lua require'telescope'.extensions.ultisnips.ultisnips{}<CR>
lua << EOF
vim.api.nvim_set_keymap('n', '<leader>gc', ':Octo issue create<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>i', ':Octo issue list<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>r', ":lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>bb', ":lua require('telescope.builtin').buffers()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>m', ":lua require('telescope.builtin').marks()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>t', ":lua require('telescope.builtin').treesitter()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', ":lua require('plugin.telescope').project_files()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>p', ":lua require('telescope').extensions.project.project{}<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>c', ":lua require('plugin.telescope').my_git_commits()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>g', ":lua require('plugin.telescope').my_git_status()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>b', ":lua require('plugin.telescope').my_git_bcommits()<CR>", {noremap = true, silent = true})
EOF

"=================================================================="
" Symbols - Outline
nnoremap <leader>so :SymbolsOutline<CR>


"=================================================================="
" Vista
nnoremap <silent> \\ :Vista!!<CR>


"=================================================================="
" Tree
nnoremap <silent> <leader>e :NvimTreeToggle<CR>
nnoremap <leader>mb :netrw-bookmark<CR>


"=================================================================="
" LazyGit
nnoremap <leader>lg :LazyGit<CR>


"=================================================================="
" Barbar
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close ommands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

"=================================================================="
lua << EOF
-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})
-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

EOF

"=================================================================="
"HlsLens
lua << EOF
vim.api.nvim_set_keymap('n', 'n', "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '*', "*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '#', "#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'g*', "g*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'g#', "g#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
EOF


"=================================================================="
" Spectre
lua << EOF
vim.api.nvim_set_keymap('n', '<leader>S', ":lua require('spectre').open()<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap('v', '<leader>S', ":lua require('spectre').open_visual()<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>Sw', "viw:lua require('spectre').open_visual()<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>sp', "viw:lua require('spectre').open_file_search()<CR>", {noremap = true, silent = false})
EOF

"=================================================================="
" Vim-sneak
lua << EOF
vim.api.nvim_set_keymap('n', 'f', '<Plug>Sneak_f', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'F', '<Plug>Sneak_F', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 't', '<Plug>Sneak_t', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'T', '<Plug>Sneak_T', {noremap = false, silent = false})
EOF

"=================================================================="
" General utility
noremap <C-s> <cmd>w<CR>
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
noremap <C-q> :qa!<CR>
noremap <leader>sq :wq! <CR>



"=================================================================="
lua << EOF
vim.api.nvim_set_keymap('n', '<leader>gf', ':20G<CR>', {noremap = false, silent = false})
EOF
