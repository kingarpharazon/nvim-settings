" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'beyondmarc/glsl.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'majutsushi/tagbar'
Plug 'Marfisc/vorange'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'vim-airline/vim-airline'
Plug 'zchee/deoplete-jedi'

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
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
map <Leader>y "+y
map <Leader>p "+p
nnoremap <Leader>cw :cd %:p:h<CR>:pwd<CR>

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
autocmd! BufWritePost * Neomake

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader> :TagbarToggle<CR>
