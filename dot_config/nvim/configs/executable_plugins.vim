call plug#begin('~/.config/nvim/plugins')
  Plug 'junegunn/vim-easy-align'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'fatih/vim-go', { 'do': ':silent :GoUpdateBinaries' }
  Plug 'moll/vim-node'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  "Plug 'ctrlpvim/ctrlp.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()
