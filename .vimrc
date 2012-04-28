

" ALL VIM SETTINGS START
" ================================================
"
set nocompatible
colorscheme torte 
set number
syntax on

syntax enable
filetype plugin on
set noswapfile 

" Set default font and size
set guifont=Gohufont:h17

" TAB WIDTH = 4 CHARACTERS
set shiftwidth=2
set tabstop=2

" set automatic indenting
" set autoindent

" WRAP Options
set wrap
" LINEBREAK ONLY FULL WORD, NOT INSIDE WORD
set lbr

" insert time and date upon F2
map <F2> a<C-R>=strftime("%c")<CR><Esc>
filetype plugin on
filetype indent on 

" Map the 'jk' for Exit Mode Finally
map jk <Esc>


" I like <Ctrl>s for saving
map ^S :w<Enter>

" I'm tired of that uppercase Q when trying to quit
" Common command line typos
cmap W w
cmap Q q

" Map space key to : in normal mode 
nmap <space> :

" Easy exit files
nmap x :exit<Enter>

" Open nerdtree in normal mode with 'nerd' 
nmap nerd :NERDTreeToggle<Enter>
nmap bk :Bookmark<Enter>

" Map control tab to switch windows 
map <C-Tab> <C-w>w

" Show git branch on the status bar
set laststatus=2
set statusline=%{GitBranch()}

" show count of currently selected lines
set showcmd

" set context around cursor line (so I can always see a few lines below or
" above current line)
set scrolloff=3

" NERDTRee Plugin press <CR> Caps Lock to Start
map <F5> :NERDTree<ENTER>

" Add specific template for file types
autocmd BufNewFile  *.html	0r ~/.vim/skel/index.html
autocmd BufNewFile  *.css	0r ~/.vim/skel/index.css

" Add html support for php files 
au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html

" ================================================
" GENERAL VIM SETTINGS END
" ================================================
"

