" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'beyondmarc/glsl.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'Marfisc/vorange'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Display settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                  " show line numbers
set showmatch               " show matching bracket (briefly jump)
set showmode                " show mode in status bar
set showcmd                 " show typed command in status bar
set ruler                   " show cursor posiiton in status bar
set title                   " show file title in title bar
set colorcolumn=80          " show a marging at column 80
colorscheme vorange

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editor settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8		    " set utf-8 as default encoding
set noundofile			    " do not create undo files
set nowrap			        " do not wrap lines
set ignorecase			    " first enable ignore case for searching
set smartcase			    " then enable smart case (case-sensitive if you
                            " use uppercase characters
set smartindent			    " smart auto indenting
set expandtab 			    " convert tab to spaces
set tabstop=4			    " number of spaces a tab counts for
set shiftwidth=4		    " spaces for autoindent*/
filetype plugin indent on   " enable plugins

set splitbelow              " open horizonatal splits below
set splitright              " open vertical splits to the right


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap jj <Esc>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Deoplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call deoplete#enable()      " enable at startup
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neosnippet settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <C-k>  <Plug>(neosnippet_expand_or_jump)
smap <C-k>  <Plug>(neosnippet_expand_or_jump)
xmap <C-k>  <Plug>(neosnippet_expand_or_jump)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neomake
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neomake_cpp_enabled_makers=['clang']
let g:neomake_cpp_clang_args=["-std=c++14"]
autocmd! BufWritePost * Neomake
