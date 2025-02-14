-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false -- show INSERT or VISUAL
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.wo.linebreak = true
vim.wo.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/zsh"

-- Mouse
vim.opt.mouse = "" -- disable mouse
vim.opt.mousefocus = false

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
-- vim.opt.clipboard = "unnamedplus"

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- Highlight the current line
vim.opt.cursorline = true

-- spell checking
vim.opt.spelllang = { "en" }
vim.opt.spellsuggest = { "best", "9" }

-- vertical line for max line size
vim.opt.colorcolumn = "99"
