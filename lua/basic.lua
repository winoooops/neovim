-- ujtf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- highlight current row
vim.wo.cursorline = true

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.o.ts = 4 

-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = false

-- 行结尾可以跳到下一行
vim.o.whichwrap = 'b,s,<,>,[,],h,l'

-- 补全增强
vim.o.wildmenu = true

vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行

-- 显示行数
vim.o.number = true
vim.wo.number = true
