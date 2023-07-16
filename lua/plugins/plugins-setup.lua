-- 自动安装packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 自动安装软件
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim' -- 主题
  --use { 
  --    "catppuccin/nvim", as = "catppuccin" 
  --    }
    use {
        "nvim-lualine/lualine.nvim",
        requires = {'nvim-tree/nvim-web-devicons', opt = true} -- 安装状态栏
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
        'nvim-tree/nvim-web-devicons', -- 安装文件树
    use "christoomey/vim-tmux-navigator" -- 安装定位插件
  },
    use "nvim-treesitter/nvim-treesitter", -- 语法高亮
    use "p00f/nvim-ts-rainbow", -- 彩色括号
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    },
    use {
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
        "hrsh7th/cmp-path"
    },
    use {
        "numToStr/Comment.nvim", -- gcc和gc注释
        "windwp/nvim-autopairs" -- 自动补全括号
        },
    use "akinsho/bufferline.nvim", -- buffer分割线
    use "lewis6991/gitsigns.nvim", -- 左则git提示
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',  -- 文件检索
        requires = { {'nvim-lua/plenary.nvim'} }
    }
}
  if packer_bootstrap then
    require('packer').sync()
  end
end)
