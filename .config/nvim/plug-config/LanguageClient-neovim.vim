let g:LanguageClient_autoStart = 1

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ 'cpp' : ['clangd'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
