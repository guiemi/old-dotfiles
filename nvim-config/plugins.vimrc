""" NERDTREE settings
let NERDTreeIgnore=[
      \'\~$', '\.pyc$', 
      \'^\.DS_Store$', 
      \'^node_modules$', 
      \'.git', 
      \'.ropeproject', 
      \'__pycache__'
\]
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
set splitbelow
set splitright

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Turn of this plugin ability of handling backspace,
" which caused interference with the ctrl+backspace function in insert mode
let g:AutoPairsMapBS = 0

""" COC settings
let g:coc_global_extensions = [
      \'coc-tslint-plugin', 
      \'coc-tsserver', 
      \'coc-css', 
      \'coc-html', 
      \'coc-json', 
      \'coc-prettier', 
      \'coc-git',
      \'coc-eslint',
      \'coc-styled-components' 
\]

" One Dark Theme settings

set termguicolors
syntax on
colorscheme onedark

" Lightline settings
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'onedark',
\ }

" FZF settings
source /usr/share/doc/fzf/examples/fzf.vim

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-s': 'vsplit' }
