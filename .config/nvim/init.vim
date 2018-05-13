" initialize

augroup MyAutoCmd
  autocmd!
augroup END

runtime! init/*.vim

" remove trail space
function! s:remove_trail_space()
  let cursor = getpos(".")
  %s/\s\+$//ge
  call setpos(".", cursor)
  unlet cursor
endfunction
augroup MyAutoCmd
  autocmd BufWritePre * call <SID>remove_trail_space()
augroup END

colorscheme apprentice
" vim: foldmethod=marker
