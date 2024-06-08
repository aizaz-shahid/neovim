return {
  'terrortylor/nvim-comment',
  event = 'InsertEnter',
  config = function()
    require('nvim_comment').setup { create_mappings = false }
  end,
}
