
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存本地变量，用来设置快捷键
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

-- 快速移动
map("n", "<C-k>", "5k", opt)
map("n", "<C-j>", "5j", opt)

-- 分屏通过s按键开始
-- 水平分屏
map("n", "sk", ":vsp<CR>", opt)
-- 上下分屏
map("n", "sj", ":sp<CR>", opt)
-- 关闭当前分屏
map("n", "sw", "<C-w>c", opt)
-- 关闭全部分屏
map("n", "sww", "<C-w>o", opt)

-- 切换标签
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)
