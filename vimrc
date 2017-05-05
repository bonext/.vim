runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

if !exists("g:os")
	if has("win64") || has("win32") || has("win16")
		let g:os = "Windows"
	else
		let g:os = substitute(system('uname'), '\n', '', '')
	endif
endif

" utf-8
set encoding=utf-8
scriptencoding utf-8

" fancy text wrap
set breakindent
set showbreak=⤷\ 

" Russian with Ctrl+^
if g:os == "Darwin"
    set keymap=russian-jcukenmac
else
    set keymap=russian-jcukenwin
endif
set iminsert=0
set imsearch=0
" highlight lCursor guifg=NONE guibg=Cyan " highlight cursor

" numbers
set number

" tab size
set tabstop=4 		" tab == 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab

" stop nagging about unsaved buffers!
set hidden

" my dotfiles manager configs
au BufNewFile,BufRead dfscheme set filetype=json

" colorscheme
colorscheme base16-default-dark
