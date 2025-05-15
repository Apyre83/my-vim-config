vim.cmd('set nocompatible') -- To overwrite Vi settings by the Vim ones

require('plug_config')
require('nightly_config')
require('syntastic_config')
require('mappings')
require('tagbar_config')

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


-- TODO: Put this inside a markdown-config.lua file
vim.g.mkdp_auto_start = 1 -- Opening preview window on entering markdown buffer
vim.g.mkdp_auto_close = 1 -- Closing preview window on leaving markdown buffer
vim.g.mkdp_refresh_slow = 0 -- Refresh slow is refreshing only when saving buffer or leaving insert mode
vim.g.mkdp_command_for_global = 0 -- Command for global is markdown preview used for all files
vim.g.mkdp_open_to_the_world = 1 -- Open to world makes the ip usable by anyone on network
vim.g.mkdp_open_ip = '' -- Specific IP
vim.g.mkdp_browser = '' -- Specific Browser
vim.g.mkdp_echo_preview_url = 1 -- Print URL when opening markdownPreview
vim.g.mkdp_markdown_css = '' -- Custom css markdown style / absolute path
vim.g.mkdp_highlight_css = '' -- Custom highlight style / absolute path
vim.g.mkdp_port = '' -- Port to use, default random
vim.g.mkdp_page_title = '「${name}」' -- Preview page title
vim.g.mkdp_images_path = "/home/user/.markdown_images" -- Images locations
vim.g.mkdp_filetypes = {'markdown'} -- Recognized file types
vim.g.mkdp_theme = 'dark' -- Theme
vim.g.mkdp_combine_preview = 0 -- If enable, it will reuse previous opened preview window when previewing a markdown file
vim.g.mkdp_combine_preview_auto_refresh = 1 -- Auto refetch combine preview contents when change markdown buffer when is equal to 1



-- Since tpp is not supported by neovim, we need to set the filetype to cpp just to get the color right
function _G.setFileTypeTpp()
	if vim.bo.filetype == "tpp" then
		vim.cmd('set syntax=cpp')
	end
end

vim.api.nvim_create_autocmd(
	'BufEnter',
	{ pattern = '*', command = ':lua setFileTypeTpp()' })
