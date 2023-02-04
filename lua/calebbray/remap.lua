local set = vim.keymap.set

-- set("n", "<leader>pv", ":Ex<CR>")
set("", "<Space>", "<Nop>")
vim.keymap.set("n", "<leader>pv", ":Explore<CR>", { silent = false })
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")

set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

set("x", "<leader>p", '"_dP')
set("i", "jk", "<ESC>")

-- set("v", "p", '"_dP')
set("n", "<S-Up>", ":resize -2<CR>")
set("n", "<S-Down>", ":resize +2<CR>")
set("n", "<S-Left>", ":vertical resize -2<CR>")
set("n", "<S-Right>", ":vertical resize +2<CR>")

-- Navigate Buffers
set("n", "<S-l>", ":bnext<CR>")
set("n", "<S-h>", ":bprevious<CR>")
-- set("n", "<A-w>", ":bdelete<CR>")

set("n", "Q", "<nop>")
set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
