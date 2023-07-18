vim.opt.termguicolors = true

local bufferline = require("bufferline")
bufferline.setup {
    highlights = {
        tab_separator_selected = {
            underline = true,
            sp = "red",
        },
    },
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }},
        -- style_preset = bufferline.style_preset.no_italic,
        -- style_preset = {
        --      bufferline.style_preset.no_italic,
        --      bufferline.style_preset.no_bold,
        -- }
        separator_style = "slant",
        -- mousemoveevent = {
        --    enable = true,
        --},
        -- hover = {
        --    enabled= true,
        --    delay = 200,
        --    reveal = {
        --        "close"
        --    }
        --},
        -- enforce_regular_tabs = true
    }
}
