call plug#begin()
 
 Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
 Plug 'nvim-tree/nvim-web-devicons'
 Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
call plug#end()
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
lua << END
local lualine = require('lualine')

lualine.setup {
  options = {
    theme = 'pywal-nvim',
  },
}

END
