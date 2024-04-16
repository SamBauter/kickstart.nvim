return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/tech_tree',
      },
    },
    completion = {
      nvim_cmp = true,
      -- Trigger completion at 2 chars
      min_chars = 2,
      new_notes_location = 'current_dir',
      prepend_note_id = true,
    },
    mappings = {
      ['<leader>of'] = {
        action = function()
          return require('obsidian').util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
    },

    -- see below for full list of options 👇
  },
}
