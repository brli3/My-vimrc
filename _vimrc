" Vim configuration file
" Author: Ruipenyu Li
" 03/05/2017
 
" Backup files
set nobackup
set noswapfile

" Colours
syntax enable " enable syntax processing
if has('gui_running')
    set background=light
else
    set background=dark  " dark background 
endif
set t_Co=256  " to enable 256 colours in vim. For solarized color
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized    

" Fortran
let fortran_free_source=1
let fortran_do_enddo=1
filetype plugin indent on
syntax on
let fortran_fold=1
set foldmethod=syntax  " fold program, module, subroutine and function.

" Spaces and tabs
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set bs=2  " fix backspace key

" UI configs
set number  " show line numbers
set showmode
set showcmd  " show command in bottom bar
set cursorline  " highlight current line
filetype indent on  " load filetype-specifc indent files
set wildmenu  " visual autocomplete for command menu
set lazyredraw  " redraw only when we need to
set showmatch  " highlight matching
set ruler  " show file stats
set visualbell  " blink cursor on error instead of beeping

" Searching
set incsearch  " search as characters are entered
set hlsearch  " highlight matches
nnoremap <C-L> :nohl<CR><C-L>  " c-l to clean searh highlight
set ignorecase smartcase

" Folding
set foldenable  " enable folding
set foldlevelstart=10  " open most folds by default, set to 99 for open all
set foldnestmax=10  " 10 nested fold max
"" commond: zc, zo, zC, zO

" Movement
nnoremap j gj  " move vertically by visual line
nnoremap k gk
nnoremap B ^  " move to begining of line
nnoremap E $  " move to end of a line
"nnoremap $ <nop>  " do nothing
"nnoremap ^ <nop>  " do nothing

" Pathegon
execute pathogen#infect()
syntax on
filetype plugin indent on

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }

let g:syntastic_fortran_compiler = "gfortran"
let g:syntastic_fortran_compiler_options = "-std=f95"
