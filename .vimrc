" ---------
" Powerline
" ---------
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set t_Co=256

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
" Go
NeoBundle 'nsf/gocode'
NeoBundle 'fatih/vim-go'
" Python
NeoBundle 'davidhalter/jedi-vim'
" Puppet
NeoBundle 'rodjek/vim-puppet'
" Angular
NeoBundle 'burnettk/vim-angular'
" snippets
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
" Sidebars
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'majutsushi/tagbar'
" Colorschemes
NeoBundle 'flazz/vim-colorschemes'
call neobundle#end()
NeoBundleCheck
filetype plugin indent on

" ------------------
" Languages settings
" ------------------
autocmd Filetype c setlocal ts=4 sw=4 expandtab
autocmd Filetype cpp setlocal ts=4 sw=4 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 expandtab

" -----
" Other
" -----
set number
set background=dark
colorscheme solarized
