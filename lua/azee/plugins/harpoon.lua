return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    -- Keymaps
    vim.keymap.set('n', '<leader>aa', function()
      harpoon:list():add()
    end, { desc = 'Add current file' })

    vim.keymap.set('n', '<leader>am', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle Amazing menu' })

    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end, { desc = 'Select Amazing item 1' })

    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end, { desc = 'Select Amazing item 2' })

    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end, { desc = 'Select Amazing item 3' })

    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end, { desc = 'Select Amazing item 4' })

    -- Toggle previous & next buffers stored within Amazing list
    vim.keymap.set('n', '<leader>ah', function()
      harpoon:list():prev()
    end, { desc = 'Select previous Amazing item' })

    vim.keymap.set('n', '<leader>al', function()
      harpoon:list():next()
    end, { desc = 'Select next Amazing item' })
  end,
}
