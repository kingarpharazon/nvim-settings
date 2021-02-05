" In Nvim-qt, when we press Shift+insert in insert mode, it will add a literal
" <S-Insert>, instead of the text on the system clipboard. To fix this issue,
" we can use the following mapping:
inoremap <silent> <S-Insert> <C-R>+

" The GUI completion menu is also ugly and too long, it can be disabled by
" adding the following setting:
GuiPopupmenu 0

" Font selection
Guifont! Source Code Pro:h10
