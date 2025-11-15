vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>w', ':w<cr>')
vim.keymap.set('n', '<leader>sv', vim.cmd.Ex)

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")

vim.keymap.set('n', 'J', "mzJ'z")

vim.keymap.set('x', '<leader>p', "\"_dp")
vim.keymap.set('n', '<leader>b', ":bd!<CR>")

vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>p', "\"+gp")
vim.keymap.set('n', '<leader>p', "\"+gp")
vim.keymap.set('n', '<leader>y', "\"+y<CR>")

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- stop f1 
vim.keymap.set('n', "F1", nil)
vim.keymap.set('v', "F1", nil)
vim.keymap.set('i', "F1", nil)
