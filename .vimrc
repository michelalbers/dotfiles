" Pathogen
execute pathogen#infect()

" Speed
set timeoutlen=1000 ttimeoutlen=0

" Basics
syntax on
filetype plugin indent on
set number
let mapleader = ","
set guifont=Menlo\ Regular:h13

" Indedation helper
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" NerdTree Config
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Tabs
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Theme
set background=dark
colorscheme Monokai

" TagBar Toogle
nmap <Leader>b :TagbarToggle<CR>

let g:CoffeeAutoTagDisabled=1    " Disables autotaging on save (Default: 0 [false])
let g:CoffeeAutoTagIncludeVars=1  " Includes variables (Default: 0 [false])
let g:CoffeeAutoTagTagRelative=1  " Sets file names to the relative path from the tag 

"let g:tagbar_type_go = {
"    \ 'ctagstype' : 'go',
"    \ 'kinds'     : [
"        \ 'p:package',
"        \ 'i:imports:1',
"        \ 'c:constants',
"        \ 'v:variables',
"        \ 't:types',
"        \ 'n:interfaces',
"        \ 'w:fields',
"        \ 'e:embedded',
"        \ 'm:methods',
"        \ 'r:constructor',
"        \ 'f:functions'
"    \ ],
"    \ 'sro' : '.',
"    \ 'kind2scope' : {
"        \ 't' : 'ctype',
"        \ 'n' : 'ntype'
"    \ },
"    \ 'scope2kind' : {
"        \ 'ctype' : 't',
"        \ 'ntype' : 'n'
"    \ },
"    \ 'ctagsbin'  : 'gotags',
"    \ 'ctagsargs' : '-sort -silent'
"    \ }
