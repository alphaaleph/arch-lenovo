syntax on


" ==============================================================================
" VIM GENERAL
"
set backspace=2
set encoding=utf-8
set noshowmode
set nowrap

set number relativenumber
set ruler

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set laststatus=2


" ==============================================================================
" PLUGINS
"
"   fzf             - command-line fuzzy finder
"   lightline       - light configurable statusline
"   nerdtree        - file system explorer
"   nerdtree-git    - nerdtree git status
"   ale             - asynchronous lint engine
"   tagbar          - outline viewer
"   tabular         - text filtering and alignment
"   vim-go          - Go development
"   wal             - colorscheme generator
"
so ~/.vim/plugins.vim


" ==============================================================================
" FZF
"
map ; :Files<CR>
let g:fzf_layout = { 'down': '-40%' }


" ==============================================================================
" LIGHTLINE
"
let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'filename', 'modified', 'charhex' ] ]
    \ },
    \ 'component': {
    \   'charhex': '0x%B'
    \ },
    \ }


" ==============================================================================
" NERDTREE
"
map <C-n> :NERDTreeToggle<CR>


" ==============================================================================
" NERDTREE GIT
"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


" ==============================================================================
" ALE
"
" let b:ale_linters = [ 'pyflakes', 'flake8', 'pylint' ]
let b:ale_fix_on_save = 1


" ==============================================================================
" TAGBAR
"
map <C-t> :TagbarToggle<CR>


" ==============================================================================
" WAL
"
colorscheme wal




