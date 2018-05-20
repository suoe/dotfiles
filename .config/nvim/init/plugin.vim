call plug#begin('~/.local/share/nvim/plugged')

" colorscheme
Plug 'romainl/Apprentice'

" language-wide plugins
Plug 'Yggdroot/indentLine'
Plug 'junegunn/vim-easy-align', { 'on': 'EasyAlign' }
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
runtime! plug-config/deoplete.nvim.vim
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
runtime! plug-config/denite.nvim.vim
Plug 'Shougo/neomru.vim'
runtime! plug-config/neomru.vim.vim
Plug 'Shougo/neosnippet'
runtime! plug-config/neosnippet.vim
Plug 'Shougo/neosnippet-snippets'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh', }
runtime! plug-config/LanguageClient-neovim.vim

" language specific plugins
" fish script
Plug 'dag/vim-fish', { 'for': 'fish' }

Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }

call plug#end()
