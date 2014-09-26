set nocompatible
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'


call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
colorscheme smyck
set number
set ruler
set mouse=a
set nowrap
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set showmatch
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set title
set noerrorbells
set nobackup
set noswapfile
set encoding=utf-8
cmap w!! w !sudo tee % >/dev/null
:command Vimrc e ~/.vimrc 
:command NT NERDTree 
map <C-N> :NERDTreeToggle<CR>
set cursorline
set cursorcolumn
au BufNewFile,BufRead *.json set ft=javascript
map ß /


function! s:setupMarkup()
      nnoremap <leader>p :silent !open -a Marked.app '%:p'<cr>
endfunction

au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
let g:airline_powerline_fonts = 1

"NERDTree Stuff
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
let NERDTreeChDirMode=1

autocmd VimEnter * nested NERDTree
autocmd VimEnter * wincmd w

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
      if bufwinnr(t:NERDTreeBufName) != -1
            if winnr("$") == 1
                    q
            endif
      endif
  endif
endfunction

