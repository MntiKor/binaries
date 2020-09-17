set nu
set history=1000
syntax on
set mouse=a
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
set cindent
set ruler
set showcmd
set wildmenu
set ttimeout
set ttimeoutlen=100
set incsearch
filetype plugin indent on
map ma iint main(int ac, char **av)<Enter>{<Enter><Enter>}<Esc>ki<Tab>
map lb i#include <unistd.h><Enter>#include <stdio.h><Enter>#include <stdlib.h><Enter>
set nocompatible

function! Browser ()
	let line = getline (".")
	let line = matchstr (line, "http://[^ ]*")
	exec "!mozilla-firefox ".line
endfunction
map <Leader>w :call Browser ()<CR>
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=black ctermfg=white guibg=darkgrey guifg=white
set lazyredraw
set showmatch
set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=syntax
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	else
		return "\<c-p>"
	endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
set title
highlight ColorColumn ctermbg=darkgrey  guibg=lightgrey
set colorcolumn=80
