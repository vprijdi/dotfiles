require("mason").setup()

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "go to definition" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "format local buffer" })
vim.keymap.set("n", "df", vim.diagnostic.open_float, { desc = "show line diagnostics" })

vim.diagnostic.config({ virtual_text = true })

local configurations = {
    ["lua_ls"] = {
        settings = {
            Lua = {
                diagnostics = { globals = { "vim" } },
            },
        },
    },
    ["clangd"] = {
        init_options = {
            fallbackFlags = { "-std=c23" },
        },
    },
}

for server, config in pairs(configurations) do
   vim.lsp.config(server, config)
end

vim.lsp.enable({
    "lua_ls",
    "clangd",
})
