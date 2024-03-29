set t_Co=256
syntax on
set background=dark
let g:hybrid_reduced_contrast=1
colorscheme hybrid

set guioptions-=T
set guioptions-=r
set lines=35
set columns=90
set visualbell t_vb=
set transparency=235

"On Windows
if has('win32') || has('win64')
    set guifont=Consolas:h11:cANSI
    set guifontwide=MS_Gothic:h9:cSHIFTJIS
    set linespace=4

    " if possible
    "set guifont=Cica:h11
    "set encoding=utf8
    "set ambiwidth=double
    "set linespace=4
"On Linux
elseif has('linux')
    set guifont=Ubuntu\ Mono\ 10
endif
