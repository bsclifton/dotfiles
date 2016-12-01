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

" Highlight tabs (hate those things)
hi UnwantedTabs ctermbg=green guibg=#0000ff
:autocmd BufWinEnter * match UnwantedTabs /\t/

" Highlight trailing spaces
hi TrailingWhitespace ctermbg=red guibg=#f92672
:autocmd BufWinEnter * 2match TrailingWhitespace /\s\+$/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set tabstop=2
set expandtab
set number

"Ignore case when searching except when using a capital letter
set ignorecase
set smartcase

