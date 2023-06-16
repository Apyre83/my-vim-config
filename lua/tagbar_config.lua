
-- vim.api.nvim_create_autocmd(
--	'VimEnter',
--	{ pattern = '*', command=':AirlineToggle' })


vim.g.airline_experimental = 1
vim.g.airline_left_sep = '▶'
vim.g.airline_right_sep = '◀'
vim.g.airline_detect_modified = 1
vim.g.airline_detect_paste = 1
vim.g.airline_detect_crypt = 1
vim.g.airline_detect_spell = 1
vim.g.airline_detect_spelllang = 1


-- For futur update on github
-- if match(&runtimepath, 'airline')
	-- echo 'Plugin airline is installed'
-- endif

-- Some config for the status bar and more
vim.g.airline_theme = 'nightly'

vim.g.airline_powerline_fonts = 1
vim.g.airline_detect_modified = 0

vim.g.airline_section_b = '%{getcwd()}' --  in section B of the status line display the CWD

vim.g.airline_section_x = '%f'

function _G.setSize()
	local path = vim.fn.expand('%:p:h')
	local stat = vim.loop.fs_stat(path)
	if stat == nil then
		return
	end
	local size = stat.size
	vim.g.airline_section_c = 'PORN FOLDER: ' .. size .. 'KB'
end

vim.api.nvim_create_autocmd(
	'BufEnter',
	{ pattern = '*', command = ':lua setSize()' })

vim.api.nvim_create_autocmd(
	'BufEnter',
	{ pattern = '*', command = 'execute ":AirlineRefresh"' })

vim.cmd('lua setSize()')

vim.g.airline_section_y = '%l:%c'
