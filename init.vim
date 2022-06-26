:set number
:set relativenumber
:set mouse=a

:set belloff=all
:set noerrorbells

:set autoindent
:set smarttab
:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set backspace=indent,eol,start

:set noswapfile
:set nobackup
:set undodir=~/.vim/undodir
:set undofile

" Plugins
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
"Plug 'https://github.com/preservim/nerdtree'
"Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/morhetz/gruvbox'
"Plug 'https://github.com/mg979/vim-visual-multi'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/neoclide/coc.nvim'

call plug#end()

" Map F8 to toggle tagbar
nmap <F8> :TagbarToggle<CR>

" Use gruvbox color scheme
colo gruvbox

" Use <tab> to trigger completion and to navigate to the next completion item
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Symbols for air-line
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Return to last edit position when opening files
autocmd BufReadPost *
	 \ if line("'\"") > 0 && line("'\"") <= line("$") |
	 \   exe "normal! g`\"" |
	 \ endif
