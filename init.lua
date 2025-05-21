vim.cmd('set nocompatible') -- To overwrite Vi settings by the Vim ones

require('plug_config')
require('nightly_config')
require('syntastic_config')
require('mappings')
require('tagbar_config')
require('markdown_preview_config')

require('coq')

vim.g.mapleader = " "

-- vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

vim.o.relativenumber = false -- Set to true if you want numbers to be arranged on the mouse
vim.cmd('set number') -- Display the line numbers
vim.cmd('set mouse=a') -- Be able to click
vim.cmd('set encoding=UTF-8')

vim.g.rainbow_active = 1 -- Activate rainbow parathenses

-- My school header
vim.b.fortytwoheader_user = "lfresnay"
vim.b.fortytwoheader_mail = "lfresnay@student.42.fr"

vim.cmd('set tabstop=4') -- Show existing tabs with 4 spaces
vim.cmd('set shiftwidth=4') -- Tabs are 4 spaces width

vim.cmd('set foldmethod=indent') -- For foldings

-- For cpp compiling with style
vim.g.cpp_member_highlight = 1
vim.g.cpp_simple_highlight = 1

-- My c++ flags for compiling
-- vim.g.syntastic_cpp_compiler = 'c++'
-- vim.g.syntastic_cpp_compiler_options = ' -std=c++2a -Wall -Wextra -Werror'


vim.cmd('COQnow')


-- Since tpp is not supported by neovim, we need to set the filetype to cpp just to get the color right
function _G.setFileTypeTpp()
	if vim.bo.filetype == "tpp" then
		vim.cmd('set syntax=cpp')
	end
end

vim.api.nvim_create_autocmd(
	'BufEnter',
	{ pattern = '*', command = ':lua setFileTypeTpp()' })
