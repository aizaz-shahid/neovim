return {
  'RaafatTurki/corn.nvim',
  event = 'VeryLazy',
  config = function()
    require('corn').setup {
      -- ensure virtual_text diags are disabled
      vim.diagnostic.config { virtual_text = false },

      -- toggle virtual_text diags when corn is toggled
      on_toggle = function(is_hidden)
        vim.diagnostic.config { virtual_text = not vim.diagnostic.config().virtual_text }
      end,
      -- set item_preprocess_func to return the item unmodified
      item_preprocess_func = function(item)
        return item
      end,
    }
  end,
}
