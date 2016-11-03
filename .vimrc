set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Base plugin
Plugin 'tpope/vim-sensible'

" Navigation
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Languages
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'tpope/vim-cucumber'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jquery'

" Ruby
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'
"Plugin 'astashov/vim-ruby-debugger'
Plugin 'thoughtbot/vim-rspec'

" GIT
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Status bar
Plugin 'vim-airline/vim-airline'

" Tools
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-repeat' " repater for plugin maps by '.' command
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth' " auto adjust idents
Plugin 'tpope/vim-endwise' " auto end for ruby, shell, vb, c/c++, lua
"Plugin 'tsaleh/vim-align'
"Plugin 'tsaleh/vim-shoulda'
"Plugin 'tsaleh/vim-tcomment'
Plugin 'IndexedSearch'
Plugin 'Rename'
Plugin 'tpope/vim-commentary'
Plugin 'bronson/vim-trailing-whitespace'

" Themes
Plugin 'tpope/vim-vividchalk'
Plugin 'jpo/vim-railscasts-theme'

" Time tracker
Plugin 'wakatime/vim-wakatime'

call vundle#end()
filetype plugin indent on
set number
set pastetoggle=<F7>
set wildmenu
set wildmode=longest:full,full
set hidden " use hidden buffers

set spelllang=ru_yo,en_us

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

" Map start key separately from next key
let g:multi_cursor_start_key='<F6>'

map <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Rspec binding
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
