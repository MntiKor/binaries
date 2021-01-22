set nu
set history=1000
syntax on
set mouse=a
colorscheme desert
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
map ma iint<Tab><Tab>main(int ac, char **av)<Enter>{<Enter><Enter>}<Esc>ki<Tab>
map lb i#include <unistd.h><Enter>#include <stdio.h><Enter>#include <stdlib.h><Enter>
set nocompatible
set t_Co=256
function! Browser ()
	let line = getline (".")
	let line = matchstr (line, "http://[^ ]*")
	exec "!mozilla-firefox ".line
endfunction
map <Leader>w :call Browser ()<CR>
set cursorcolumn
highlight CursorColumn ctermbg=none ctermfg=white
set lazyredraw
set showmatch
set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=syntax
set title
highlight ColorColumn ctermbg=darkgrey
set colorcolumn=80
au FileType c exec 'set complete+=k/home/adri/.cdict'
au FileType cpp exec 'set complete+=k/home/adri/.cdict'
set completeopt=longest,menuone
set completeopt=menu,menuone,noinsert
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
autocmd InsertCharPre * call AutoComplete()
fun! AutoComplete()
    if v:char =~ '\K'
        \ && getline('.')[col('.') - 4] !~ '\K'
        \ && getline('.')[col('.') - 3] =~ '\K'
        \ && getline('.')[col('.') - 2] =~ '\K' " last char
        \ && getline('.')[col('.') - 1] !~ '\K'

        call feedkeys("\<C-P>", 'n')
    end
endfun
"set undofile
highlight Pmenu ctermbg=darkgrey
highlight PmenuSel ctermbg=grey
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
