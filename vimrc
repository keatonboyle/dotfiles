" Essentials -------------------------------------------------------------------
set nocompatible
set fileformats=unix,dos,mac
cd $HOME
set autochdir
set backspace=2
set foldmethod=indent
set foldlevel=0
autocmd BufRead * %foldopen!

" Tabs -------------------------------------------------------------------------
set expandtab
set tabstop=2
set shiftwidth=2


" Pathogen ---------------------------------------------------------------------
call pathogen#infect()
call pathogen#helptags()


" Bells (or lack thereof) ------------------------------------------------------
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=


" Sizing, line numbers ---------------------------------------------------------
set number
set numberwidth=5
set columns=85
autocmd VimLeave * set columns=80 " for returning to an 80-col terminal w/o GUI


" Lines and breaks -------------------------------------------------------------
set tw=0
set wrapmargin=0


" Styling ----------------------------------------------------------------------
colorscheme wombat
set cursorcolumn
set cursorline
set colorcolumn=81
highlight StatusLine guibg=yellow guifg=black
highlight StatusLineNC guibg=NONE guifg=white 
highlight LineNr guibg=NONE
highlight VertSplit guibg=NONE guifg=white
set fillchars=vert:\|,stl:-,stlnc:-
if has( 'gui_running' )
	set guifont=Consolas:h8:cANSI
	set guioptions-=m
	set guioptions-=T
endif


" Movement ---------------------------------------------------------------------
" In all modes except insert, use visual line movement as opposed to actual
"  line break movement.  The <Plug> stuff is necessary for compatibility 
"  with Arpeggio
inoremap <Plug>(arpeggio-default:j) j
vnoremap <Plug>(arpeggio-default:j) gj
nnoremap <Plug>(arpeggio-default:j) gj
inoremap <Plug>(arpeggio-default:k) k
vnoremap <Plug>(arpeggio-default:k) gk
nnoremap <Plug>(arpeggio-default:k) gk


" Arpeggio ---------------------------------------------------------------------
"   Map jk -> <Esc> in all modes
call arpeggio#map('i', '', 0, 'jk', '<Esc>')
call arpeggio#map('v', '', 0, 'jk', '<Esc>')
call arpeggio#map('n', '', 0, 'jk', '<Esc>')

" Functions for sizing ---------------------------------------------------------
function Shout()
    set guifont=consolas:h50:cANSI
    set lines=3
    set columns=40
    set tw=40
    set nonumber
    set noshowmode
endfunction

command Shout execute 'call Shout()'

syntax on
filetype plugin indent on 
