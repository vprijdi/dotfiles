require("vim._core.ui2").enable({})

require("options")
require("keymaps")
require("pack")
require("mini")
require("treesitter")
require("lsp")


vim.cmd("colorscheme oxocarbon")
-- vim.api.nvim_create_autocmd("VimEnter", {
-- 	callback = function()
-- 		vim.cmd("ShowkeysToggle")
-- 	end,
-- })
