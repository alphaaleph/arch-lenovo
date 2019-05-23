syntax on


" ==============================================================================
" VIM GENERAL
"
set autowrite                               " Automatically save before :next, :make etc.
set backspace=2                         
set encoding=utf-8                          " Set default encoding to UTF-8
set noshowmode                              " We show the mode with airline or lightline
set nowrap                                  " 
set noerrorbells                            " No beeps 

set number relativenumber                   " Show line numbers
set ruler

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set laststatus=2                            " Show status line always
set guifont=Monaco:h20       " 

let mapleader=","
let maplocalleader="."


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
so ~/.vim/extra/plugins.vim


" ==============================================================================
" FZF
"
map ; :Files<CR>
let g:fzf_layout = { 'down': '~20%' }


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
map <ESC>[1;4E :NERDTreeToggle<CR>


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
let g:ale_fix_on_save=1


" ==============================================================================
" TAGBAR
"
map <ESC>[1;54 :TagbarToggle<CR>


" ==============================================================================
" VIM-GO
"
let g:go_highlight_types=1
let g:go_highlight_fields=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1
let g:go_highlight_operators=1
let g:go_highlight_extra_types=1
let g:go_highlight_build_constraints=1

let g:go_list_type="quickfix"
let g:go_fmt_command="goimports"
let g:go_metalinter_enabled=['vet', 'golint', 'errcheck']

map <C-n> :cnext<CR>
map <C-p> :cprevious<CR>

so ~/.vim/extra/go.vim

augroup go
    autocmd!
    autocmd FileType go nmap <localleader>b :<C-u>call Go_Build_Files()<CR>
    autocmd FileType go nmap <localleader>c <Plug>(go-coverage-toggle)
    autocmd FileType go nmap <localleader>d <Plug>(go-doc)
    autocmd FileType go nmap <localleader>i <Plug>(go-info)
    autocmd FileType go nmap <localleader>l <Plug>(go-metalinter)
    autocmd FileType go nmap <localleader>r <Plug>(go-run)
    autocmd FileType go nmap <localleader>s <Plug>(go-def-split)
    autocmd FileType go nmap <localleader>t <Plug>(go-test)
    autocmd FileType go nmap <localleader>v <Plug>(go-def-vertical)
augroup END


" ==============================================================================
" COLORS
"
" colorscheme wal
" set background={#2b161c}
au ColorScheme * hi Normal ctermbg=None
let g:gruvbox_italic=1
colorscheme gruvbox

