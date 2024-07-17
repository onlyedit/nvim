-- ~/.config/nvim/lua/config/keymaps.lua

-- 切换标签页
vim.api.nvim_set_keymap("n", "<Tab>", "gt", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", "gT", { noremap = true, silent = true })

-- 切换缓冲区
vim.api.nvim_set_keymap("n", "<C-Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bp", ":BufferLineTogglePin<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bc", ":BufferLinePickClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bm", ":BufferLineMoveNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bM", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })

-- toggleterm terminal
-- 绑定快捷键 leader key + t + f 打开浮动终端
vim.api.nvim_set_keymap("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { noremap = true, silent = true })
-- 绑定快捷键 leader key + t + v 打开垂直终端
vim.api.nvim_set_keymap("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", { noremap = true, silent = true })
-- 绑定快捷键 leader key + t + h 打开水平终端
vim.api.nvim_set_keymap("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true })
