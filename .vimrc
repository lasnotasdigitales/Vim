syntax on
set noerrorbells
set incsearch
set nu
set nocompatible
set filetype=on 

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex', {'tag': 'v1.6'}
let g:vimtex_view_method='zathura'
let g:tex_flavor = 'latex'

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

Plug 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_auto_trigger = 0
Plug 'ervandew/supertab'
call plug#end()

autocmd BufWritePost *.cs silent! execute "!mcs % >/dev/null 2>&1" | redraw!
:imap jj <Esc>
