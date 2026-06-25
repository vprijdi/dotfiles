require("mason").setup()

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "go to definition" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "format local buffer" })
vim.keymap.set("n", "df", vim.diagnostic.open_float, { desc = "show line diagnostics" })

vim.diagnostic.config({ virtual_text = true })

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
        },
    },
})

vim.lsp.enable({
    "lua_ls",
})
