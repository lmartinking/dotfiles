set nocompatible
set t_Co=256

set mouse=a

" disable visual mode through the mouse (very annoying)
noremap <LeftDrag> <LeftMouse>
noremap! <LeftDrag> <LeftMouse>

"set ttymouse=xterm2
"set ttymouse=xterm



set title

" Should be set before Colour Scheme
syntax on

" Colour scheme
colorscheme desert256
hi Normal ctermfg=251 ctermbg=234

set autochdir

set encoding=utf8

" List chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<


" Rulers, etc
set ruler
set nu
set hid

set nolinebreak

set laststatus=2
set showtabline=2

" Mappings for tabs
map <C-t> <Esc>:tabnew<CR>
map <C-r> <Esc>:tabNext<CR>

" Save a file using root (whee!)
cabbr w!! w !sudo tee % > /dev/null<CR>:e!<CR><CR>

set wildmenu
set wildmode=list:longest
set wildignore=*.o

set backupdir=~/Temp/Vim/Backups
set directory=~/Temp/Vim/Swaps
