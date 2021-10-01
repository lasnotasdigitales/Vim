syntax on
set noerrorbells
set incsearch
set nu
set nocompatible
set filetype=on 
set spelllang=es 

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex', {'tag': 'v1.6'}
let g:vimtex_view_method='zathura'
let g:tex_flavor = 'latex'

inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

Plug 'SirVer/UltiSnips'
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

Plug   'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
 set conceallevel=1
    let g:tex_conceal='abdmgs'
    hi Conceal ctermbg=none
    let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
let g:tex_conceal_frac=1

Plug 'OmniSharp/omnisharp-vim'

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='wombat'

call plug#end()

autocmd BufWritePost *.cs silent! execute "!mcs % >/dev/null 2>&1" | redraw!
:imap jj <Esc>

"hace que la corrección sólo aplique a .tex
augroup tex
au!
au BufNewFile,BufRead *.tex set spell!
augroup END


