colorscheme base16-ocean
filetype plugin on

" TABS ARE 4 spaces
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent

" Set numbering and relative numbering
set number
set relativenumber

" LEADER BINDS
let mapleader = " "
map <leader>vr :source $MYVIMRC<CR> 
map <leader>ve :vsp ~/.vimrc<CR>
map <leader>q :q<CR>
map <leader>w :w<CR>
map <leader><TAB> :setl rnu!<CR>

" Unmap arrow keys
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> :<C-o>:echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> :<C-o>:echo "No right for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> :<C-o>:echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> :<C-o>:echo "No down for you!"<CR>

"Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title
