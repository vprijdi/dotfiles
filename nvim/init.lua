require("nastya.core")
require("nastya.lazy")

vim.lsp.enable({"lua_ls", "gopls"})
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("ShowkeysToggle")
	end,
})
