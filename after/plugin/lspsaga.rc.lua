local status, saga = pcall(require, "lspsaga")
saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
},
  finder_icons = {
  def = '  ',
  ref = '諭' ,
  link = '  ',
},
  code_action_icon = "💡",
  diagnostic_header = { "❌", "❕", "ℹ️ ", "❔" },
  border_style = "rounded",
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
