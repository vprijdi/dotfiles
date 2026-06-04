return {
    -- { 
    --     "catppuccin/nvim", 
    --     name = "catppuccin", 
    --     priority = 1000,
    --     config = function()
    --        -- vim.cmd.colorscheme "catppuccin-mocha"
    --     end
    -- },
    {
        "rose-pine/neovim",
        lazy = false,
        priority = 1000,
        name = "rose-pine",
        opts = {
            variant = "main",
            extend_background_behind_borders = true,
            styles = {
                bold = true,
                italic = true,
                transparency = false,
            },
            palette = {
                main = {
                    base = '#000000',
                    overlay = '#363738',
                },
            },
        },
        config = function(_, opts)
            require("rose-pine").setup(opts)

            vim.cmd.colorscheme "rose-pine"
        end
    },
}
