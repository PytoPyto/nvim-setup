local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
  ensure_installed = {  "tailwindcss" },
}
require 'lspconfig'.tailwindcss.setup {}
require 'lspconfig'.sumneko_lua.setup {}
require 'lspconfig'.jsonls.setup {}
require 'lspconfig'.cssls.setup {}
require 'lspconfig'.clangd.setup {}
require'lspconfig'.graphql.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.solargraph.setup{}
require'lspconfig'.sqlls.setup{}
require'lspconfig'.vuels.setup{}
require'lspconfig'.yamlls.setup{}
