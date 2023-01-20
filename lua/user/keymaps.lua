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

-- Redo better keymap
keymap("n", "<S-u>", "<C-r>", opts)
-- Better Window Navigation
keymap("n", "<C-h>", "<C+w>h", opts)
keymap("n", "<C-j>", "<C+w>j", opts)
keymap("n", "<C-k>", "<C+w>k", opts)
keymap("n", "<C-l>", "<C+w>l", opts)

keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- Resize With Arrows
keymap("n", "<S-Up>", ":resize -2<CR>", opts)
keymap("n", "<S-Down>", ":resize +2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts)

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
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)
