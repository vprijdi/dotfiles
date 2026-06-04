return {
  "nvzone/showkeys",
  cmd = "ShowkeysToggle",
  keys = {
    {"<leader>ke", "<cmd>ShowkeysToggle<cr>"}
  },
  opts = {
    timeout = 10,
    maxkeys = 5,
    show_count = true,
    position = "top-right",
  },
}
