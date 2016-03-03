set runtimepath+=~/.vim_runtime

set nocompatible              " be iMproved, required
filetype off                  " required

"set a 256 bit color scheme
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"Jade syntax hilighting
Plugin 'digitaltoad/vim-jade.git'

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"File tree in sidebar
Plugin 'scrooloose/nerdtree'

"Autocomplete 
Plugin 'Valloric/YouCompleteMe'
"ycm configs.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let g:ycm_path_to_python_interpreter='/Users/justin/.pyenv/versions/2.7/bin/python'
set completeopt-=preview

"Additional autocomplete through YouCompleteMe for JS.
"Plugin 'marijnh/tern_for_vim'

"JS Syntax from http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'

"Markdown highlighting
Plugin 'plasticboy/vim-markdown'

Plugin 'nvie/vim-flake8'

"Handlebars Syntax Hilighting
Plugin 'mustache/vim-mustache-handlebars'

"Improved status line 
Plugin 'bling/vim-airline'

"JSX Syntax hilighting for React code
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files"
let g:syntastic_javascript_checkers = ['eslint'] "lint React and ES6 style Javascript"

"Syntax linting. make sure to npm install -g jshint too.
Plugin 'scrooloose/syntastic'

"Fuzzy searching for files in project
Plugin 'kien/ctrlp.vim'

"Apply vim status line to Tmux
Plugin 'edkolev/tmuxline.vim'

" Silver searcher (ag) integration
Plugin 'rking/ag.vim'

" Block commenting shortcuts
Plugin 'scrooloose/nerdcommenter'

" Tmuxline config
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}

let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"to install run :PluginInstall from vim

"Pop NERDTree when vim is opened without a specified file.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Enable syntax hilighting
syntax enable

"Show line numbers in vim
set number

"highlight all text search matches
set hlsearch

"make tabs equivalent to two spaces. 
set expandtab
set tabstop=2
set shiftwidth=2

"enable the mouse for iTerm
set mouse=a

"Map ctrl-c in insert mode to create newline character
imap <C-c> <CR><Esc>O

"Set bash to default vim shell
set shell=/bin/bash

"Highnight lines over 80 chars
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"easily move between windows without using ctrl-w
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"forces self to stop using arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Fuzzy search to ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ycm_python_binary_path = '/Users/justin/.pyenv/versions/3.4.3/bin/Python'

let python_highlight_all=1
syntax on

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

set rtp+=/Users/justin/.pyenv/versions/3.4.3/lib/python3.4/site-packages/powerline/bindings/vim
