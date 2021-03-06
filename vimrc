"********************** Colors
syntax enable               " enable syntax processing
colorscheme solarized       " color scheme ~/.vim/colors/
set background=dark         " background color (light/dark)

"********************** Spaces & Tabs
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " when indenting with '>', use 4 spaces width
set expandtab           " tabs are spaces

"********************** UI Config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching braces/paranthesis
set ai                  " set autointending on
set ls=2                " show file name
set ruler               " always show the ruler
set colorcolumn=80      " insert a colorcolumn (for line limit)
set formatoptions+=r    " comment formatting
set t_Co=16
let g:solarized_termcolors=16

"********************** Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight by pressing a space
nnoremap <silent><space> :nohlsearch<CR>

"********************** Pluggins Specific

"*********** TagList
let Tlist_WinWidth = 40
let Tlist_Show_One_File = 1
let Tlist_Show_Menu = 1
let Tlist_Auto_Open = 1

"********************** Custom commands
" remove all trailing whitespace upon saving(:w) a file
autocmd BufWritePre * :%s/\s\+$//e
