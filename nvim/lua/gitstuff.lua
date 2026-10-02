require("gitsigns").setup({
    worktrees = {
        {
            toplevel = vim.env.HOME .. "/.config",
            gitdir = vim.env.HOME .. "/.config/.dotfiles.git",
        },
    },
})
