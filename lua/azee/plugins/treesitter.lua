return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    ensure_installed = {
      'ninja',
      'python',
      'rst',
      'toml',
      'yaml',
      'json',
      'lua',
      'hcl',
      'sql',
      'dockerfile',
      'hcl',
      'go',
      'typescript',
      'html',
      'css',
      'javascript',
      'bash',
      'terraform',
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end,
}
