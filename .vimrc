set nu
set history=1000
syntax on
set mouse=a
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
set cindent
if has('persistent_undo')
	set undofile
endif
set ruler
set showcmd
set wildmenu
set ttimeout
set ttimeoutlen=100
set incsearch
filetype plugin indent on
map ma iint main(int ac, char **av)<Enter>{<Enter><Enter>}<Esc>ki<Tab>
map lb i#include <unistd.h><Enter>#include <stdio.h><Enter>#include <stdlib.h><Enter>

