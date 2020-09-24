" save
noremap <C-s> :w <CR>

" move
noremap <C-e> <C-e><S-m> <CR>
noremap <C-y> <C-y><S-m> <CR>

" move in insert mode
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

" split
nnoremap :vs<CR> :vsplit <CR>
nnoremap :s<CR>  :split <CR>

" open terminal on splitted left pane
nnoremap <S-t> :vsplit <CR> <C-w>l :terminal <CR>

" move splitted windows
nnoremap <A-h>   <C-w>h
nnoremap <A-j>   <C-w>j
nnoremap <A-k>   <C-w>k
nnoremap <A-l>   <C-w>l

" buffer move
nnoremap <C-h> :bprev <CR>
nnoremap <C-l> :bnext <CR>

" grep move
nnoremap <C-k> :cprev <CR>
nnoremap <C-j> :cnext <CR>

" close
nnoremap <C-c> :cclose <CR>
map <A-c> :q <CR>

" cansel highlight
nnoremap <ESC><ESC> :noh <CR>

" vim search
nnoremap <C-S-f> :Rg

" fugitive settings
nnoremap <A-b> :Gblame <CR>

" NERDTree
nnoremap <S-p> :NERDTreeFind<CR>

" very magic
nmap / /\v