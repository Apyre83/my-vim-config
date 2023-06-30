local	Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Header for school
Plug 'pandark/42header.vim'

-- Colorscheme
Plug 'Alexis12119/nightly.nvim'
Plug 'luochen1990/rainbow' -- Rainbow parathenses

-- Nerdtree for file exploration
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

-- Code
Plug 'bfrg/vim-cpp-modern'

-- Icons
Plug 'ryanoasis/vim-devicons'

-- Optional: If you don't have github copilot this one is good
-- Plug 'Exafunction/codeium.vim'

-- Vim-airline is for the Tagbar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


-- FOr Code
-- Python flake8 norm

vim.call('plug#end')
