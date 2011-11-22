call pathogen#infect()
call pathogen#helptags()

set nocompatible

set mouse=a

" disable visual mode through the mouse (very annoying)
noremap <LeftDrag> <LeftMouse>
noremap! <LeftDrag> <LeftMouse>

"set ttymouse=xterm2
set ttymouse=xterm

set title

" Should be set before Colour Scheme
syntax on

" Colour scheme
colorscheme desert

if &t_Co > 2 || has("gui_running")
  syntax on
endif

if &t_Co == 256
  colorscheme desert256
  hi Normal ctermfg=251 ctermbg=234
endif

" Change directory to that of current file
set autochdir

set encoding=utf8

" List chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
noremap <F4> :set list!<CR>

" Toggle Hilighted Search
nmap <F5> :set hls!<CR>

" Nice easy closing
map q :NERDTreeClose<CR>:q<CR>

" Rulers, etc
set ruler
set nu
set hid

set nolinebreak

set laststatus=2
set showtabline=2

set nowrap

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

set foldmethod=indent
set foldlevel=1

fun! ToggleFold()
  if foldlevel('.') == 0
  normal! l
  else
  if foldclosed('.') < 0
  . foldclose
  else
  . foldopen
  endif
  endif
  " Clear status line
  echo
  endfun
  " Map this function to Space key.
  noremap <space> :call ToggleFold()<CR>


" Mappings for tabs

" New tab, nerd tree, then change focus
map <C-t> <Esc>:tabnew<CR>:NERDTreeMirror<CR>:wincmd p<CR>
map <C-r> <Esc>:tabNext<CR>

"if &loaded_nerd_tree == 1
  map <F3> :NERDTreeToggle<CR>
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
"endif

" Save a file using root (whee!)
cabbr w!! w !sudo tee % > /dev/null<CR>:e!<CR><CR>

"set wildmenu
"set wildmode=list:longest
"set wildignore=*.o

"set backupdir=~/Temp/Vim/Backups
"set directory=~/Temp/Vim/Swaps
