-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      --      'nvim-tree/nvim-web-devicons', -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
      window = {
        position = 'right',
      },

      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added = 'A',
            deleted = 'D',
            modified = 'M',
            renamed = 'R',
            -- Status type
            untracked = 'U',
            ignored = 'IG',
            unstaged = 'US',
            staged = 'S',
            conflict = 'C',
          },
        },
      },
    },
    keys = {
      { '<leader>e', '<cmd>Neotree toggle<cr>', desc = 'Show Neo-tree' },
      { '<leader>gs', '<cmd>Neotree toggle source=git_status<cr>', desc = 'Git Status (Neo-tree)' },
      { '<leader>b', '<cmd>Neotree toggle source=buffers<cr>', desc = 'Buffers (Neo-tree)' },
    },
  },
}
