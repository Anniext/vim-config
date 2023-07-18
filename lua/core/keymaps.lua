vim.g.mapleader = " "
local keymap = vim.keymap

-- -------------------------插入模式-------------

keymap.set("i", "jk", "<ESC>")

-- -------------------------视觉模式-------------
-- 单行和多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- -------------------------正常模式-------------
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v")  -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s")  -- 垂直新增窗口
keymap.set("n", "q", ":q<CR>")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 文件树
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- buffer
keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")

-- lsp
keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')

-- symbols
keymap.set('n', '<leader>so', '<cmd>SymbolsOutline<CR>', {silent = true, noremap = true})

