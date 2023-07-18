-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup{
    -- 关闭文件时自动关闭
    -- auto_close = true,
    -- 不显示 git 状态图标
    sort_by = "case_sensitive",
    viem = {
	width = 25,
    },
    git = {
        enable = true
    },
    filters = {
        dotfiles = true,
    },
    renderer = {
        group_empty = true,
        highlight_git = true,
        --highlight_opened_files = "icon",
        icons = {
            webdev_colors = true,
            show = {
                file = true,
                folder = true,
            }
        },
    }
}
-- OR setup with some options
-- require("nvim-tree").setup({
--   sort_by = "case_sensitive",
--   view = {
--     width = 25,
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })
