" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'beyondmarc/glsl.vim'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'machakann/vim-sandwich'
Plug 'majutsushi/tagbar'
Plug 'Marfisc/vorange'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-neosnippet'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-vim-lsp'
Plug 'roxma/nvim-yarp'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Omnisharp/omnisharp-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'tommcdo/vim-lion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'

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
set termguicolors           " use true colors in terminal
colorscheme nord

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
set clipboard^=unnamed,unnamedplus


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
" => Completion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif

let g:Omnisharp_highlight_types = 2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neosnippet settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <C-k>  <Plug>(neosnippet_expand_or_jump)
smap <C-k>  <Plug>(neosnippet_expand_or_jump)
xmap <C-k>  <Plug>(neosnippet_expand_or_jump)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\ 'cs': ['OmniSharp'],
\ 'cpp': ['clangd']
\}

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Change the symbols ALE uses
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" Run linteres only when saving a file
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_insert_leave = 0
" let g:ale_lint_on_enter = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimwiki settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win32") || has("win16")
    let g:vimwiki_list = [
                \{'path': 'D:/Dropbox/Vimwiki'}
                \]
else
    let g:vimwiki_list = [
                \{'path': '~/Dropbox/Vimwiki'}
                \]
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Emmet
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-lion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:lion_squeeze_spaces = 1
