-- ---@type RustaceanOpts
-- local rustacean_opts = {
--   -- ---@type RustaceanToolsOpts
--   -- tools = {
--   --   -- ...
--   -- },
--   ---@type RustaceanLspClientOpts
--   server = {
--     on_attach = function(_, bufnr)
--       -- Set keybindings, etc. here.
--       vim.keymap.set('n', 'K', function()
--         vim.cmd.RustLsp { 'hover', 'actions' }
--       end, { silent = true, buffer = bufnr, desc = 'Rust: Hover Actions' })
--
--       vim.keymap.set('n', '<leader>ca', function()
--         vim.cmd.RustLsp 'codeAction'
--       end, { silent = true, buffer = bufnr, desc = 'Rust: [C]ode [A]ction' })
--     end,
--     settings = {
--       -- rust-analyzer language server configuration
--       ['rust-analyzer'] = {
--         cargo = {
--           allFeatures = true,
--           loadOutDirsFromCheck = true,
--           runBuildScripts = true,
--         },
--         checkOnSave = {
--           allFeatures = true,
--           command = 'clippy',
--           extraArgs = { '--no-deps' },
--         },
--         procMacro = {
--           enable = true,
--           ignored = {
--             ['async-trait'] = { 'async_trait' },
--             ['napi-derive'] = { 'napi' },
--             ['async-recursion'] = { 'async_recursion' },
--           },
--         },
--       },
--     },
--     -- ---@type RustaceanDapOpts
--     -- dap = {
--     --   -- ...
--     -- },
--   },
-- }

return {
  -- {
  --   'rust-lang/rust.vim',
  --   -- ft = "rust",
  --   -- init = function()
  --   --   vim.g.rustfmt_autosave = 1
  --   -- end
  -- },
  {
    'simrat39/rust-tools.nvim',
    -- ft = "rust"
  },
  -- {
  --   'mrcjkb/rustaceanvim',
  --   version = '^3', -- Recommended
  --   ft = { 'rust' },
  --   init = function()
  --     -- Configure rustaceanvim here
  --     vim.g.rustaceanvim = {}
  --   end,
  --   -- opts = rustacean_opts,
  --   -- config = function(_, opts)
  --   --   vim.g.rustaceanvim = vim.tbl_deep_extend('force', {}, opts or {})
  --   -- end,
  -- },
}
