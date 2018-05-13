" unmap for simplicity
nnoremap ZZ <nop>
nnoremap ZQ <nop>
nnoremap Q <nop>

" fold
nnoremap <space> za

" window
nnoremap [window] <Nop>
nmap s [window]
nnoremap <silent> [window]s :split<CR>
nnoremap <silent> [window]v :vsplit<CR>
nnoremap <silent> [window]h <C-w>h
nnoremap <silent> [window]j <C-w>j
nnoremap <silent> [window]k <C-w>k
nnoremap <silent> [window]l <C-w>l
nnoremap <silent> [window]H <C-w>H
nnoremap <silent> [window]J <C-w>J
nnoremap <silent> [window]K <C-w>K
nnoremap <silent> [window]L <C-w>L
nnoremap <silent> [window]r <C-w>r

" for terminal
tnoremap <silent> <ESC> <C-\><C-n>

nnoremap <silent> mn :set relativenumber!<CR>
imap <C-h> <backspace>
noremap j gj
noremap k gk
noremap gj j
noremap gk k
noremap <C-h> ^
noremap <C-l> $
map mm %
nnoremap ; :
nnoremap : ;
