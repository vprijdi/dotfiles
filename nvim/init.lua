require("vim._core.ui2").enable({})

require("options")
require("keymaps")
require("pack")
require("mini")
require("treesitter")
require("lsp")
require("gitstuff")

-- colorscheme stuff
vim.cmd("colorscheme base2tone_suburb_dark")

for _, group in ipairs({
    "Normal",
    "NormalFloat",
    "NormalNC",
    "SignColumn",
    "LineNr",
    "NonText",
    "StatusLine",
    "Pmenu",
}) do
    vim.api.nvim_set_hl(0, group, { bg = "none", fg = "#afb8f1" })
end
