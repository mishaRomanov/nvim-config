require "nvchad.mappings"

-- add yours here

local map_key = vim.keymap.set
local api = vim.api

map_key("n", ";", ":", { desc = "CMD enter command mode" })
map_key("i", "jk", "<ESC>")
map_key("n", "|", "<cmd>vsplit<cr>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
