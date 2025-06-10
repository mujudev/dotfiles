local km = vim.keymap
km.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
km.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
km.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
km.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
km.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
km.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
