" ---------
" NeoBundle
" ---------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
" Autocompletion
NeoBundle 'Shougo/neocomplete.vim'
" Go
NeoBundle 'nsf/gocode'
NeoBundle 'fatih/vim-go'
" Python
NeoBundle 'davidhalter/jedi-vim'
" Puppet
NeoBundle 'rodjek/vim-puppet'
" Angular
NeoBundle 'burnettk/vim-angular'
" Git
NeoBundle 'tpope/vim-fugitive'
" snippets
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
" Sidebars
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'majutsushi/tagbar'
" UX
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-airline/vim-airline'
call neobundle#end()
NeoBundleCheck
filetype plugin indent on

" ------------------
" Languages settings
" ------------------
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 expandtab

" -----
" Autocompletion
" -----
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:airline_powerline_fonts = 1

" -----
" Theme
" -----
set number
if !has("gui_running")
	let g:solarized_termtrans=1
	let g:solarized_termcolors=256
endif
set background=dark
colorscheme solarized
