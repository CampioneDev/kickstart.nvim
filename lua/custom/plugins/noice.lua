return {
  {
    'folke/noice.nvim',
    enabled = not vim.g.vscode,
    event = 'VeryLazy',
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      -- 'rcarriga/nvim-notify',
    },
    config = function()
      require('noice').setup {
        cmdline = {
          enabled = true,
          view = 'cmdline',
        },
        messages = {
          -- NOTE: If you enable messages, then the cmdline is enabled automatically.
          -- This is a current Neovim limitation.
          enabled = true, -- enables the Noice messages UI
        },
        popupmenu = {
          enabled = false,
        },
        notify = {
          enabled = false,
        },
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
            ['vim.lsp.util.stylize_markdown'] = true,
            ['cmp.entry.get_documentation'] = true,
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = true, -- add a border to hover docs and signature help
        },
      }

      require('telescope').load_extension 'noice'
    end,
    keys = {
      { '<leader>sm', '<cmd>Telescope noice<cr>', desc = '[S]earch [M]essages (CC)' },
    },
  },
}
