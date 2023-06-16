
-- Mapping value whenever you press uppercase unintionally
vim.keymap.set('c', 'WQA<CR>', 'wqa<CR>')
vim.keymap.set('c', 'Wqa<CR>', 'wqa<CR>')
vim.keymap.set('c', 'WQa<CR>', 'wqa<CR>')
vim.keymap.set('c', 'Wa<CR>', 'wa<CR>')
vim.keymap.set('c', 'QA<CR>', 'qa<CR>')
vim.keymap.set('c', 'WQ<CR>', 'wq<CR>')
vim.keymap.set('c', 'Wq<CR>', 'wq<CR>')
vim.keymap.set('c', 'Q<CR>', 'q<CR>')
vim.keymap.set('c', 'W<CR>', 'w<CR>')

vim.keymap.set('c', 'WQA!<CR>', 'wqa!<CR>')
vim.keymap.set('c', 'Wqa!<CR>', 'wqa!<CR>')
vim.keymap.set('c', 'WQa!<CR>', 'wqa!<CR>')
vim.keymap.set('c', 'Wa!<CR>', 'wa!<CR>')
vim.keymap.set('c', 'QA!<CR>', 'qa!<CR>')
vim.keymap.set('c', 'WQ!<CR>', 'wq!<CR>')
vim.keymap.set('c', 'Wq!<CR>', 'wq!<CR>')
vim.keymap.set('c', 'Q!<CR>', 'q!<CR>')
vim.keymap.set('c', 'W!<CR>', 'w!<CR>')

-- Keymap for school's header
vim.keymap.set('n', '<F1>', ':FortyTwoHeader<CR>')

-- For Vim-Airline tagbar
vim.keymap.set('n', '<F8>', ':AirlineToggle<CR>')

-- Exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
