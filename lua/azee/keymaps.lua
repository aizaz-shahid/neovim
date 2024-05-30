-- Utility Keymaps
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set({ 'n', 'v' }, '<leader>/', ': CommentToggle<cr>', { desc = 'Toggle Comment' })

-- Indent with Tab in normal mode
vim.api.nvim_set_keymap('n', '<Tab>', '>>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', '<<', { noremap = true })

-- Indent with Tab in visual mode
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true })

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
vim.api.nvim_set_keymap('x', 'J', ":move '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap('x', 'K', ":move '<-2<CR>gv=gv", { noremap = true })

-- Quickfix keymaps
vim.keymap.set('n', '<leader>qo', ':copen<CR>', { desc = 'Open quickfix list' })
vim.keymap.set('n', '<leader>qf', ':cfirst<CR>', { desc = 'Jump to first quickfix list item' })
vim.keymap.set('n', '<leader>qn', ':cnext<CR>', { desc = 'jump to next quickfix list item' })
vim.keymap.set('n', '<leader>qp', ':cprev<CR>', { desc = 'jump to prev quickfix list item' })
vim.keymap.set('n', '<leader>ql', ':clast<CR>', { desc = 'jump to last quickfix list item' })
vim.keymap.set('n', '<leader>qc', ':cclose<CR>', { desc = 'close quickfix list' })

-- Copy Paste Keymaps
vim.keymap.set('v', 'x', '"+d', { desc = 'Cut' })
vim.keymap.set('n', 'X', '"+dd', { desc = 'Cut line' })
vim.keymap.set({ 'n', 'v' }, 'y', '"+y', { desc = 'Copy', noremap = true })
vim.keymap.set('n', '<leader>cp', ':let @+=expand("%:p")<CR>', { desc = 'Copy current file path to clipboard' })

-- Git Keymaps
vim.keymap.set('n', '<leader>gs', ':Neogit<CR>', { desc = 'Git Status', silent = true, noremap = true })
-- vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { silent = true, noremap = true })
-- vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { silent = true, noremap = true })
-- vim.keymap.set('n', '<leader>gP', ':Neogit push<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { desc = 'Git Branches', silent = true, noremap = true })

-- Debugging and Testing Keymaps
vim.keymap.set('n', '<leader>db', ':DBUIToggle<CR>', { desc = 'Toggle Databases' })
--l vim.keymap.set('n', '<leader><leader>x', '<cmd>source %<CR>', { desc = 'Execute the current file' })

-- Harpoon Keymaps
