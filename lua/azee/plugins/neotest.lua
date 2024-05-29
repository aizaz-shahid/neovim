return {
  {
    'nvim-neotest/neotest-python',
  },
  {
    'nvim-neotest/neotest',
    -- optional = true,
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-python',
    },
    keys = {
      {
        '<leader>Tr',
        function()
          require('neotest').run.run()
        end,
        desc = 'Run Nearest',
      },
      {
        '<leader>Td',
        function()
          require('neotest').run.run { strategy = 'dap' }
        end,
        desc = 'Debug Nearest',
      },
      {
        '<leader>Tf',
        function()
          require('neotest').run.run(vim.fn.expand '%')
        end,
        desc = 'Run current File',
      },
      {
        '<leader>Ts',
        function()
          require('neotest').summary.toggle()
        end,
        desc = 'Toggle Summary',
      },
      {
        '<leader>To',
        function()
          require('neotest').output.open { enter = true, auto_close = true }
        end,
        desc = 'Show Output',
      },
      {
        '<leader>TO',
        function()
          require('neotest').output_panel.toggle()
        end,
        desc = 'Toggle Output Panel',
      },
      {
        '<leader>Tl',
        function()
          require('neotest').run.run_last()
        end,
        desc = 'Run Last',
      },
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-python' {
            dap = { justMyCode = false },
            args = { '--log-level', 'DEBUG' },
            runner = 'pytest',
            -- python = '/Users/aizazshahid/.pyenv/versions/3.11.0/bin/python3.11',
          },
          -- require 'neotest-plenary',
        },
      }
      require('neodev').setup {
        library = { plugins = { 'neotest' }, types = true },
      }
    end,
  },
}
