-- NOTE: Basic Keymaps
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>qd', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Move highlighted text
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv")

-- Quickfix keymaps
vim.keymap.set('n', '<leader>qo', ':copen<CR>', { desc = 'Open quickfix list' })
vim.keymap.set('n', '<leader>qf', ':cfirst<CR>', { desc = 'Jump to first quickfix list item' })
vim.keymap.set('n', '<leader>qn', ':cnext<CR>', { desc = 'jump to next quickfix list item' })
vim.keymap.set('n', '<leader>qp', ':cprev<CR>', { desc = 'jump to prev quickfix list item' })
vim.keymap.set('n', '<leader>ql', ':clast<CR>', { desc = 'jump to last quickfix list item' })
vim.keymap.set('n', '<leader>qc', ':cclose<CR>', { desc = 'close quickfix list' })

-- Delete but don't copy(send to void register instead)
vim.keymap.set({ 'n', 'v' }, '<C-d>', [["_d]])

-- NOTE: Neogit Keymaps
vim.keymap.set('n', '<leader>gs', ':Neogit<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gP', ':Neogit push<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { silent = true, noremap = true })
-- vim.keymap.set('n', '<leader>gB', ':G blame<CR>', { silent = true, noremap = true })

-- Python Testing
vim.keymap.set('n', '<leader>tc', function()
  if vim.bo.filetype == 'python' then
    require('dap-python').test_class()
  end
end, { desc = 'Run Class Tests' })

vim.keymap.set('n', '<leader>tm', function()
  if vim.bo.filetype == 'python' then
    require('dap-python').test_method()
  end
end, { desc = 'Run Method Test' })

-- nvim-comment
vim.keymap.set({ 'n', 'v' }, '<leader>/', ': CommentToggle<cr>')
