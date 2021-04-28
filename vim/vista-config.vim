set tags=~/.config/nvim/tags " Where to store tags file
let g:autotagTagsFile = "~/.config/nvim/tags"  " ^^
let g:fzf_tags_command = 'ctags -R -f ~/.config/nvim/tags --exclude=.vim/*'
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" Update the vista on |TextChanged| and |TextChangedI|.
let g:vista_update_on_text_changed = 1

let g:fzf_layout = { 'window': {'width': 0.8, 'height': 0.8} }
