let g:LanguageClient_autoStart = 1

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'cpp' : ['clangd'],
    \ 'haskell' : ['stack', 'exec', 'hie-wrapper', '--', '--lsp'],
    \ }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
