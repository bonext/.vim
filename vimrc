runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

if !exists("g:os")
	if has("win64") || has("win32") || has("win16")
		let g:os = "Windows"
	else
		let g:os = substitute(system('uname'), '\n', '', '')
	endif
endif

" Russian with Ctrl+^
if g:os == "Darwin"
    set keymap=russian-jcukenmac
else
    set keymap=russian-jcukenwin
endif
set iminsert=0
set imsearch=0
" highlight lCursor guifg=NONE guibg=Cyan " highlight cursor

" tab size
set tabstop=4 		" tab == 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab

" stop nagging about unsaved buffers!
set hidden

" my dotfiles manager configs
au BufNewFile,BufRead dfscheme set filetype=json
