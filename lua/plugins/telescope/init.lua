return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  -- or , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    local themes = require('telescope.themes')

    telescope.setup{
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
    }

    local builtin = require('telescope.builtin')

    -- Your existing keymaps
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

    -- Color scheme previewer with a custom keymap
    vim.keymap.set('n', '<leader>cs', function()
      builtin.colorscheme({
        enable_preview = true,
        theme_conf = themes.get_dropdown({ winblend = 10 }),
      })
    end, { noremap = true, silent = true })
  end
}

