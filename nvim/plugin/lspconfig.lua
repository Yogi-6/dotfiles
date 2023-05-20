local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then 
    print('failed to load lspconfig_status')
    return
end


local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then 
    print('failed to load cmp_nvim_lsp_status')
    return
end

local on_attach = function(client, bunfr)

    local opts = { noremap = true, silent = true, buffer = bunfr }

    keymap.set("n", "gD", '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
end


local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.flow.setup {
    on_attach = on_attach,
    capabilities=capabilities
}


lspconfig.lua_ls.setup {
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        on_attach(client, bunfr)
        enable_format_on_save(client, bunfr)
    end,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            },

            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkthirdParty = false,
            }
        }

    }

}


