local opts = { noremap = true, silent = true }

vim.g.mapleader = ","
vim.keymap.set("n", "<space><space>", ":")
-- vim.g.maplocalleader = " "

-- Move lines up and down
vim.keymap.set("n", "H", ":m .+1<CR>==", { desc = "move line down" })
vim.keymap.set("n", "A", ":m .-2<CR>==", { desc = "move line up" })
vim.keymap.set("v", "H", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual"})
vim.keymap.set("v", "A", ":m '<-2<CR>gv=gv", { desc = "moves lines up down in visual"})

-- Center when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up (centered)" })

-- Better indents
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- No yanking for a bunch of things
vim.keymap.set("x", "<leader>p", [["_dP]], {desc = "p before cursor w/o yanking"})
vim.keymap.set("v", "p", '"_dp', opts, {desc = "p after cursor w/o yanking"})
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], {desc = "d w/o yanking"})

vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "clear search hl", silent = true })
vim.keymap.set("n", "x", '"_x', opts, { desc = "x without yanking" })

--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "makes file executable" })

-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- moving between windows with ctrl+ arrow keys
vim.keymap.set("n", "<C-Left>",  "<C-w>h")
vim.keymap.set("n", "<C-Down>",  "<C-w>j")
vim.keymap.set("n", "<C-Up>",    "<C-w>k")
vim.keymap.set("n", "<C-Right>", "<C-w>l")
-- tab stuff
-- vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")   --open new tab
-- vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") --close current tab
-- vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")     --go to next
-- vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")     --go to pre
-- vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>") --open current tab in new tab

--split stuff 
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) 
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Copy filepath to the clipboard
vim.keymap.set("n", "<leader>fp", function()
  local filePath = vim.fn.expand("%:~")
  vim.fn.setreg("+", filePath) 
  print("File path copied to clipboard: " .. filePath) 
end, { desc = "Copy file path to clipboard" })
