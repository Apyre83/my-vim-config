
vim.g.airline_experimental = 1
vim.g.airline_left_sep = '▶'
vim.g.airline_right_sep = '◀'
vim.g.airline_detect_modified = 1
vim.g.airline_detect_paste = 1
vim.g.airline_detect_crypt = 1
vim.g.airline_detect_spell = 1
vim.g.airline_detect_spelllang = 1


vim.g.airline_theme = 'night_owl'

vim.g.airline_powerline_fonts = 1
vim.g.airline_detect_modified = 0

vim.g.airline_section_b = '%{getcwd()}'

function _G.setSize()
    local path = vim.fn.expand('%:p:h')
    local total_size = 0

    local function scan(dir)
        local handle = vim.loop.fs_scandir(dir)
        if not handle then return end

        while true do
            local name, type = vim.loop.fs_scandir_next(handle)
            if not name then break end

            local full_path = dir .. '/' .. name
            local stat = vim.loop.fs_stat(full_path)

            if stat then
                if type == 'file' then
                    total_size = total_size + stat.size
                elseif type == 'directory' then
                    scan(full_path)
                end
            end
        end
    end

    scan(path)

    local formatted_size
    if total_size < 1024 then
        formatted_size = total_size .. " B"
    elseif total_size < 1024 * 1024 then
        formatted_size = string.format("%.1f KB", total_size / 1024)
    elseif total_size < 1024 * 1024 * 1024 then
        formatted_size = string.format("%.1f MB", total_size / (1024 * 1024))
    else
        formatted_size = string.format("%.1f GB", total_size / (1024 * 1024 * 1024))
    end

    vim.g.airline_section_c = 'PORN FOLDER: ' .. formatted_size
end



vim.api.nvim_create_autocmd(
	'BufEnter',
	{ pattern = '*', command = ':lua setSize()' })

vim.api.nvim_create_autocmd(
	'BufEnter',
	{ pattern = '*', command = 'execute ":AirlineRefresh"' })

vim.cmd('lua setSize()')


vim.g.airline_section_x = '%f'
vim.g.airline_section_y = '%l:%c'

