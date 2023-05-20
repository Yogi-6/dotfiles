vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>") -- Clear search highlight


-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close a tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to the next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go the the previous tab
