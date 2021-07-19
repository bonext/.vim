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
if has("patch-7.4.354")
    set breakindent
endif
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
" set number

" virtual space
set virtualedit=block

" tab size
set tabstop=4 		" tab == 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab

" stop nagging about unsaved buffers!
set hidden

" my dotfiles manager configs
" au BufNewFile,BufRead dfscheme set filetype=json

" colorscheme
if !has("gui_running")
	" match base16 colorscheme in bash
	if filereadable(expand("~/.vimrc_background"))
		let base16colorspace=256
		source ~/.vimrc_background
	else
		colorscheme default
	endif
endif

" paste toggle (no more weirndess when pasting to console vim!)
set pastetoggle=<F5>

" imap hack
" imap jk <ESC>

set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*,*.egg-info

" hide stuff from NERDTree
let NERDTreeRespectWildIgnore=1

augroup vimrc
  " Automatically delete trailing DOS-returns and whitespace on file open and
  " write.
  autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//
augroup END

" line limiter
set colorcolumn=80

" NERDTree
" Most of these come from official README:
" https://github.com/preservim/nerdtree
nnoremap <F2> :NERDTreeToggle<CR>
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
