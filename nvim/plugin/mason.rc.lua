local mason_status, mason = pcall(require, "mason")
if not mason_status then
    print('failed to load mason.nvim')
    return
end


local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
    print('failed to load mason_lspconfig_status.nvim')
    return
end


mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        'lua_ls',
    }
})
