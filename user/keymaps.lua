-- shorten function name
local keymap = vim.keymap.set
-- Silent Keymap output
local opts = { silent = false }

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal = "n"
--   insert = "i"
--   visual = "v"
--   visual block = "d"
--   term   = "t"
--   command = "c"

-- Better Window Navigation
keymap("n", "<C-h>", "<C+w>h", opts)
keymap("n", "<C-j>", "<C+w>j", opts)
keymap("n", "<C-k>", "<C+w>k", opts)
keymap("n", "<C-l>", "<C+w>l", opts)

keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- Resize With Arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate Buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert
-- jk to fast exit insert mode
keymap("i", "jk", "<ESC>", opts)

-- Visual
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down -- NOT WORKING RIGHT NOW
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)
