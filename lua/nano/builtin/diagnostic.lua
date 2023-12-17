vim.fn.sign_define("DiagnosticSignError", { texthl = "DiagnosticSignError", text = "" })
vim.fn.sign_define("DiagnosticSignWarn", { texthl = "DiagnosticSignWarn", text = "" })
vim.fn.sign_define("DiagnosticSignHint", { texthl = "DiagnosticSignHint", text = "" })
vim.fn.sign_define("DiagnosticSignInfo", { texthl = "DiagnosticSignInfo", text = "" })

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    -- Use a sharp border with `FloatBorder` highlights
    border = "single",
})

vim.diagnostic.config({
    float = { border = "single" },
    severity_sort = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    virtual_text = false,
})

bind("n", "]d", vim.diagnostic.goto_next)
bind("n", "[d", vim.diagnostic.goto_prev)
bind("n", "gr", vim.lsp.buf.rename)
bind("n", "go", vim.lsp.buf.code_action)
bind("n", "gq", vim.diagnostic.setqflist)
bind("n", "gD", vim.lsp.buf.declaration)
bind("n", "gd", vim.lsp.buf.definition)
bind("n", "gi", vim.lsp.buf.implementation)
bind("n", "gy", vim.lsp.buf.type_definition)
bind("n", "gl", vim.diagnostic.open_float)
bind("n", "gs", vim.lsp.buf.signature_help)
bind("n", "K", vim.lsp.buf.hover)