
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存本地变量，用来设置快捷键
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

-- 快速移动 <C> => Ctrl
-- map("n", "<C-k>", "5k", opt)
-- map("n", "<C-j>", "5j", opt)

-- 水平分屏 <leader> => space
map("n", "<leader>sw", ":vsp<CR>", opt)
-- 上下分屏
map("n", "<leader>sW", ":sp<CR>", opt)
-- 关闭当前分屏
map("n", "<leader>cw", "<C-w>c", opt)
-- 关闭全部分屏
map("n", "<leader>cW", "<C-w>o", opt)

-- 切换标签
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)

-- 左侧打开文件目录
map("n", "<leader>e", ":Lex 20<CR>", opt)
-- 在当前窗口打开文件目录
map("n", "<leader>E", ":Explore<CR>", opt)

-- 调整tab大小
map("n", "<leader>lS", ":resize +2<CR>", opt)
map("n", "<learder>nS", ":resize -2<CR>", opt)
map("n", "<leader>ls", ":vertical resize +2<CR>", opt)
map("n", "<leader>ns", ":vertical resize -2<CR>", opt)

-- 在buffer中前进/后退<S> => Shift
map("n", "<S-k>", ":bnext<CR>", opt)
map("n", "<S-j>", ":bprevious<CR>", opt)

-- 删除当前buffer
map("n", "<S-q>", ":bd<CR>", opt)

-- 在Visual模式下改变锁进不会退出
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- wiondow下, 在Visual模式下上下移动所选文字, <A> => Alt
-- map("v", "<A-k>", ":m .+1<CR>==", opt)
-- map("v", "<A-j>", ":m .-1<CR>==", opt)
-- map("v", "p", "_dP", opt)

-- visual模式下, 移动代码块
map("x", "J", ":m '>+1<CR>gv-gv", opt)
map("x", "K", ":m '<-2<CR>gv-gv", opt)

-- 保存
map("n", "<leader>s", ":w<CR>", opt)

