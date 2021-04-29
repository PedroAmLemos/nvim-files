let g:lightline = {
	  \ 'colorscheme': 'onedark',
	  \ 'active': {
	  \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'absolutepath', 'modified', 'method'] ]
	  \ },
	  \ 'tabline': {
	  \   'left': [ ['buffers'] ],
	  \   'right': [ ['close'] ]
	  \ },
	  \ 'component_expand': {
	  \   'buffers': 'lightline#bufferline#buffers'
	  \ },
	  \ 'component_type': {
	  \   'buffers': 'tabsel'
	  \ },
	  \ 'component_function': {
	  \   'method': 'NearestMethodOrFunction',
	  \   'gitbranch': 'FugitiveHead'
	  \ },
	  \ }

let g:lightline#bufferline#enable_nerdfont=1
let g:lightline#bufferline#icon_position='first'
let g:lightline#bufferline#show_number=2
let g:lightline#bufferline#enable_devicons=1

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

