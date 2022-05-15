-- trailing ;
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("i", ";;", "<Esc>A;", { noremap = true })

-- save shortcut
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w!<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-s>", "<Esc>:w!<CR>", { noremap = true })

-- quit shortcut
vim.api.nvim_set_keymap("i", "<C-q>", "<Esc>:q<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-q>", "<Esc>:q<CR>", { noremap = true })

-- tab management
-- vim.api.nvim_set_keymap("n", "<C-t>", ":tabnew<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-x>", ":tabclose<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-p>", ":tabprevious<CR>", { noremap = true })

-- Nvim Tree Toggle
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true })

-- Nvim Terminal
-- vim.api.nvim_set_keymap("n", "<C-l>", ":split<CR>:terminal<CR>i", { noremap = true })

-- Split Navigation
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<C-w>k", { noremap = true })

vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<C-w>j", { noremap = true })

vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<C-w>l", { noremap = true })

vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-h>", "<C-w>h", { noremap = true })

-- Split resize
vim.api.nvim_set_keymap("n", "<a-Right>", ":vertical resize -5<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "<a-Right>", ":vertical resize -5<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<a-Up>", ":resize +5<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "<a-Up>", ":resize +5<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<a-Down>", ":resize -5<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "<a-Down>", ":resize -5<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<a-Left>", ":vertical resize +5<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "<a-Left>", ":vertical resize +5<CR>", { noremap = true })
