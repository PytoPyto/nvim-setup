" Fundamentals "{{{
" ---------------------------------------------------------------------
let g:airline_theme='onedark'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
set noswapfile
autocmd!
set number
scriptencoding utf-8
set mouse=a
set signcolumn=number
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set termguicolors
 set inccommand=split
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
set path+=**

set wildignore+=*/node_modules/*
autocmd InsertLeave * set nopaste
set formatoptions+=r

"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline
"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript
" Fish
au BufNewFile,BufRead *.fish set filetype=fish

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
runtime ./vim/lightline.vim
runtime ./maps.vim
runtime ./vim/prettier.vim
lua << EOF
require("samura/git")
require("samura/trouble")
EOF
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
set termguicolors 
set background=dark
set t_Co=256
colorscheme solarized8
"}}}

" Extras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}

" vim: set foldmethod=marker foldlevel=0:l
