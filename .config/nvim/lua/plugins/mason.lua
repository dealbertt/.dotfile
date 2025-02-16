return{
    'williamboman/mason.nvim',
    dependencies = { "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
},
    config = function()

        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = { 'rust_analyzer','clangd','lua_ls','zls'},
            automatic_installation = true,
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({
                        capabilities = lsp_capabilities,
                    })
                end,
                lua_ls = function()
                    require('lspconfig').lua_ls.setup({
                        capabilities = lsp_capabilities,
                        settings = {
                            Lua = {
                                runtime = {
                                    version = 'LuaJIT'
                                },
                                diagnostics = {
                                    globals = {'vim'},
                                },
                                workspace = {
                                    library = {
                                        vim.env.VIMRUNTIME,
                                    }
                                }
                            }
                        }
                    })
                end,
            }
        })
    end,
}
