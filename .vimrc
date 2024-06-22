set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()

let mapleader = "\<Space>"
set number
colorscheme slate 

"nnoremap <C-K> :bprev<CR>
nnoremap <leader>p :bprev<CR>
nnoremap <leader>n :bnext<CR>
"nnoremap <C-J> :bnext<CR>

let g:netrw_winsize=25
nnoremap <leader>e :Lexplore<CR>

set noerrorbells
set background=dark
set wildmenu

syntax on

set directory=$HOME/.vim/swp//

set undofile "Maintain undo history between sessions
set undodir=$HOME/.vim/undodir

vmap <Leader>y "+y

nnoremap n nzz
nnoremap N nzz

augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber

" Switch between windows using leader key + direction keys
"nnoremap <leader>h <C-w>h
"nnoremap <leader>j <C-w>j
"nnoremap <leader>k <C-w>k
"nnoremap <leader>l <C-w>l

if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif


nnoremap <C-h> <C-w>W
nnoremap <C-l> <C-w>w

set noswapfile
