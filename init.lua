-- 插件管理
require("core.options")

-- 快捷键和基础配置
require("core.keymaps")
require("plugins.plugins-setup")

-- 配置lualine
require("plugins.lualine")

-- 配置文件树
require("plugins.nvim-tree")

-- 配置语法高亮和彩虹括号
require("plugins.treesitter")

-- 配置lsp服务
require("plugins.lsp")

-- 配置自动补全服务
require("plugins.cmp")

-- 配置注释插件和自动补全括号插件
require("plugins.comment")
require("plugins.autopairs")

-- 启用buffer缓冲区和git提示信息
require("plugins.gitsigns")
require("plugins.bufferline")

-- 启用文件检索插件
require("plugins.telescope")
