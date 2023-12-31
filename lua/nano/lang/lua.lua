return function(_, load_lsp, load_guard, _, lsp_cb, guard_cb)
    local lspconfig, capabilities = unpack(load_lsp())
    local ft, _ = unpack(load_guard())
    ft("lua"):fmt("lsp")

    lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
            Lua = {
                diagnostics = {
                    enable = true,
                    globals = { "vim" },
                },
                runtime = {
                    version = "LuaJIT",
                    path = vim.split(package.path, ";"),
                },
                workspace = {
                    library = { vim.env.VIMRUNTIME, },
                    checkThirdParty = false,
                },
                completion = { callSnippet = "Replace" },
            },
        },
    })

    -- ft("lua"):fmt({
    --     cmd = "stylua",
    --     args = { "-", "--indent-type", "Spaces" },
    --     stdin = true,
    -- })

    lsp_cb()
    guard_cb("lua")
end
