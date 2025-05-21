
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
vim.g.mkdp_combine_preview = 1 -- If enable, it will reuse previous opened preview window when previewing a markdown file
vim.g.mkdp_combine_preview_auto_refresh = 1 -- Auto refetch combine preview contents when change markdown buffer when is equal to 1
