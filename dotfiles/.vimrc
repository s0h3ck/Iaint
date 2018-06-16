syntax on                
filetype plugin indent on

set encoding=utf-8

set autoindent              " Sets autoindentation 
set smartindent
set relativenumber          " Sets the number of line 
set tabstop=4               " The width of a TAB is set to 4
set shiftwidth=4            " Indents will have a width of 4
set softtabstop=4           " Sets the number of columns for a TAB
set expandtab               " Expand TABs to spaces
set hlsearch                " Highlight all his matches 
set incsearch               " Highlight while typing

" F5 run test to execute Python script
autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>
nnoremap <F9> :w<cr>:!python %<cr>

" Shortcut to toggle NERDTree plugin
" https://github.com/scrooloose/nerdtree
nmap <F7> :NERDTreeToggle<CR>

" Shortcut to toggle TagBar plugin
" https://github.com/majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>
set updatetime=500

" Macro shift-enter to do a new line without entering in insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Colorscheme configuration for lightline.vim
" https://github.com/itchyny/lightline.vim
set laststatus=2
set t_Co=256
set background=dark
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Clipboard copy trick
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction

function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

" This will jump to the last known cursor position
" https://askubuntu.com/questions/202075/how-do-i-get-vim-to-remember-the-line-i-was-on-when-i-reopen-a-file/202077
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
