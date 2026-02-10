require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "gopls", "basedpyright" }
vim.lsp.enable(servers)
vim.lsp.enable "rust_analyzer" -- For some reason it doesn't load if included in servers list. So i do it manually.
vim.lsp.enable "basedpyright" -- Custom pyright server with some settings.
local map_key = vim.keymap.set

map_key("n", "gI", vim.lsp.buf.implementation, nil)
map_key("n", "gd", vim.lsp.buf.declaration, nil)
map_key("n", "<leader>cr", vim.lsp.buf.rename, nil)
map_key("n", "gR", function()
  require("telescope.builtin").lsp_references {
    layout_strategy = "vertical",
    layout_config = {
      preview_height = 0.4,
      height = 0.9,
      mirror = true, -- Preview on the right.
      width = 0.8,
    },
  }
end)
