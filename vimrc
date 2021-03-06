call plug#begin('~/.vim/plugged')

" Syntax higlighting
Plug 'sheerun/vim-polyglot'
Plug 'mxw/vim-jsx'
" Code analysis
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
" autocomlete
Plug 'Valloric/YouCompleteMe', {'do': './install.py --tern-completer'}
Plug 'marijnh/tern_for_vim'
Plug 'othree/javascript-libraries-syntax.vim'
" autoclose
Plug 'Raimondi/delimitMate'
" Navigation
Plug 'ggreer/the_silver_searcher'
Plug 'ctrlpvim/ctrlp.vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Autoformat
Plug 'Chiel92/vim-autoformat'

call plug#end()
set number
set autoindent
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=nicr
set noswapfile
set encoding=utf-8

hi Visual term=reverse cterm=reverse guibg=Grey

let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:jsx_ext_required = 0
