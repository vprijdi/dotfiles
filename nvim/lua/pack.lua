vim.pack.add( {
    'https://github.com/nyoom-engineering/oxocarbon.nvim',
    'https://github.com/stevearc/oil.nvim',
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', branch = "main" },
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/nvim-mini/mini.files',
    'https://github.com/nvim-mini/mini.cmdline',
    'https://github.com/nvim-mini/mini.notify',
    'https://github.com/nvim-mini/mini.surround',
    'https://github.com/nvim-mini/mini.pick',
    'https://github.com/nvim-mini/mini.extra',
    'https://github.com/nvim-mini/mini.pairs',
} )

-- oil file explorer --
require("oil").setup({
    default_file_explorer = false,
    watch_for_changes = true,
    keymaps = {
        ["L"] = "actions.select",
    },
    view_options = {
        show_hidden = true,
    },
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "open parent directory with oil" })

vim.api.nvim_create_autocmd("FileType", {
    pattern = "oil",
    callback = function()
        vim.opt_local.cursorline = true
    end,
})


