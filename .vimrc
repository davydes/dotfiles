set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'jlanzarotta/bufexplorer'

" original repos on github
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'
"Plugin 'tsaleh/vim-align'
"Plugin 'tsaleh/vim-shoulda'
"Plugin 'tsaleh/vim-tcomment'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'majutsushi/tagbar'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'
"Plugin 'astashov/vim-ruby-debugger'

" GIT
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Status bar
Plugin 'vim-airline/vim-airline'

" vim-scripts repos
Plugin 'IndexedSearch'
Plugin 'jquery'

" Themes
Plugin 'tpope/vim-vividchalk'
Plugin 'jpo/vim-railscasts-theme'

call vundle#end()
filetype plugin indent on
set number
set pastetoggle=<F7>
set wildmenu
set wildmode=longest:full,full

colorscheme railscasts
if has('gui_running')
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
  set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 14
  set lines=999 columns=999
endif
set grepprg=ack

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" TagBar
nnoremap <silent> <F9> :TagbarToggle<CR>

" Ctags
set tags=./tags
map <silent> <Leader>rt :!bundle list --paths=true \| xargs ctags --extra=+f --exclude=.git --exclude=log -R *<CR><CR>
