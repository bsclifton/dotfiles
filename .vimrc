"lots of content grabbed from
"https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500
" For the yank/delete buffer size
set viminfo='20,<1000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax sync fromstart
try
  colorscheme monokai
catch
  set background=dark
endtry

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Show leading whitespace that includes spaces, and trailing whitespace.
" per http://vim.wikia.com/wiki/Highlight_unwanted_spaces
hi ExtraWhitespace ctermbg=red guibg=#f92672
:autocmd BufWinEnter * match ExtraWhitespace /^\s* \s*\|\s\+$/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set tabstop=2
set expandtab
set number

