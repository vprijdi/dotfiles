return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
            default_file_explorer = true, -- start up nvim with oil instead of netrw
			columns = { },
			keymaps = {
                ["q"] = "actions.close",
                ["<M-h"] = "actions.select_split"
			},
            delete_to_trash = true,
			view_options = {
				show_hidden = true,
			},
            skip_confirm_for_simple_edits = true,
    },
	config = function(_, opts)
		require("oil").setup(opts)

		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		vim.keymap.set("n", "<leader>-", require("oil").toggle_float)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "oil",
            callback = function()
                vim.opt_local.cursorline = true
            end,
        })
	end,
}


