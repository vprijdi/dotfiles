-- Basic settings
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false

-- Indentation
vim.opt.expandtab = true                            -- Use spaces instead of tabs
vim.opt.tabstop = 4                                 -- Tab width
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true                           -- Copy indent from current line
vim.opt.smartindent = true

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true                           -- Case sensitive if uppercase in search
vim.opt.incsearch = true                           -- Show matches as you type

-- File handling
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.updatetime = 100
vim.opt.autoread = true                            -- Auto reload files changed outside vim
vim.opt.autowrite = false                          -- Don't auto save

-- Visual settings
vim.opt.termguicolors = true                       -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                         -- Always show sign column
vim.opt.colorcolumn = "100"                        -- Show column at 100 characters
vim.opt.showmatch = true
vim.opt.lazyredraw = true                          -- Don't redraw during macros
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Behavior settings
vim.opt.backspace = {"start", "eol", "indent"}     -- Basically normal backspace
vim.opt.errorbells = false
vim.opt.clipboard:append("unnamedplus")
vim.opt.iskeyword:append("-")                      -- Treat dash as part of word vim.opt.inccommand = "split"
vim.opt.mouse = "a"
-- vim.opt.foldenable = false

vim.opt.splitright = true
vim.opt.splitbelow = true


-- maybe
-- vim.opt.completeopt = "menuone,noinsert,noselect"  
-- vim.opt.path:append("**")                          -- include subdirectories in search
