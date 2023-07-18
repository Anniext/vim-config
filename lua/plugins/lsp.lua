require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls", -- lua
        "bashls", -- bash
        "clangd", -- c
        "cmake", -- cmake
        "cssls", -- css
        "dockerls", -- docker
        "docker_compose_language_service", -- dockercompose 
        "gopls", -- go
        "html", -- html
        "jsonls", --json
        "jdtls", -- java,
        "tsserver", -- js
        "ltex", -- latex
        "marksman", -- markdown
        "matlab_ls", -- matlab
        "psalm", -- php
        "pyright", -- python
        "r_language_server", -- r
        "sqlls", -- sql
        "vuels", -- vue
        "lemminx", -- xml
        "yamlls" -- yaml
    },
}

-- 使用lsp插件和cmp插件结合自动补全
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {
    capabilities = capabilities,
}

lspconfig.pyright.setup {
    capabilities = capabilities,
}

lspconfig.gopls.setup{
    capabilities = capabilities
}
lspconfig.html.setup{
    capabilities = capabilities,
}
lspconfig.clangd.setup{
    capabilities = capabilities,
}
lspconfig.cssls.setup{
    capabilities = capabilities,
}
lspconfig.dockerls.setup{
    capabilities = capabilities,
}
lspconfig.docker_compose_language_service.setup{
    capabilities = capabilities,
}
lspconfig.jsonls.setup{
    capabilities = capabilities,
}
lspconfig.tsserver.setup{
    capabilities = capabilities,
}
lspconfig.marksman.setup{
    capabilities = capabilities,
}
lspconfig.r_language_server.setup{
    capabilities = capabilities,
}
lspconfig.sqlls.setup{
    capabilities = capabilities,
}
lspconfig.vuels.setup{
    capabilities = capabilities,
}
lspconfig.lemminx.setup{
    capabilities = capabilities,
}
lspconfig.yamlls.setup{
    capabilities = capabilities,
}
