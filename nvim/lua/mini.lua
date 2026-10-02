-- mini files --
require("mini.files").setup({
    mappings = {
        go_in = '<CR>',
    },
    windows = {
        preview = true,
    },
})

vim.keymap.set("n", "<leader>-", function()
    MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
    MiniFiles.reveal_cwd()
end, { desc = "mini.files into currently opened file" })


-- mini cmd completions --
require("mini.cmdline").setup({
    autocorrect = {
        enable = false,
    },
})

-- mini file picker --
require("mini.pick").setup()
require("mini.extra").setup()

vim.keymap.set("n", "<leader>pf", function() MiniPick.builtin.files() end, { desc = "mini file picker" })
vim.keymap.set("n", "<leader>pw", function() MiniPick.builtin.grep_live() end, { desc = "mini pick live search" })
vim.keymap.set("n", "<leader>xx", function() MiniExtra.pickers.diagnostic() end, { desc = "ini pick diagnostics" })

vim.keymap.set("n", "<leader>ph", function() MiniPick.builtin.help() end, { desc = "mini pick help" })
vim.keymap.set("n", "<leader>pk", function() MiniExtra.pickers.keymaps() end, { desc = 'mini pick keymaps' })
vim.keymap.set("n", "<leader>pc", function() MiniExtra.pickers.colorschemes() end, { desc = 'mini pick colorcshemes' })
vim.keymap.set("n", "<leader>ps", function() MiniExtra.pickers.spellsuggest({ pattern = vim.fn.expand("<cword>") }) end, { desc = 'mini pick spelling' })

-- rest of mini plugins --
require("mini.surround").setup()
require("mini.notify").setup()
require("mini.pairs").setup()
