local mapkey = require("utils.keymapper").mapvimkey

-- Buffer Navigation
mapkey("<C-PageUp>", "bnext", "n") -- Next buffer
mapkey("<C-PageDown>", "bprevious", "n") -- Prev buffer
-- mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
-- mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer

-- Directory Navigatio}n
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>e", "NvimTreeToggle", "n")

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right

-- Window Management
mapkey("<M-v>", "vsplit", "n") -- Split Vertically
mapkey("<M-h>", "split", "n") -- Split Horizontally
mapkey("<M-k>", "resize +2", "n")
mapkey("<M-j>", "resize -2", "n")
mapkey("<M-l>", "vertical resize +2", "n")
mapkey("<M-h>", "vertical resize -2", "n")

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path

-- Indenting
vim.keymap.set("v", "<", "<gv", { silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { silent = true, noremap = true })

local api = vim.api

-- Comments
api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })
