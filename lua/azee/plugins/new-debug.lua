return {
  {
    'mfussenegger/nvim-dap',
    -- optional = true,
    -- keys = {
    --   {
    --     '<leader>td',
    --     function()
    --       require('neotest').run.run { strategy = 'dap' }
    --     end,
    --     desc = 'Debug Nearest',
    --   },
    -- },
  },
  {
    'mfussenegger/nvim-dap-python',
    dependencies = {
      'mfussenegger/nvim-dap',
    },
    -- stylua: ignore
    keys = {
      { "<leader>dm", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
      { "<leader>dc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
    },
    config = function()
      -- local path = require('mason-registry').get_package('debugpy'):get_install_path()
      require('dap-python').setup '/Users/aizazshahid/.pyenv/versions/3.11.0/bin/python3.11'
      --(path .. '/venv/bin/python')
      require('dap-python').test_runner = 'pytest'
    end,
  },
}
