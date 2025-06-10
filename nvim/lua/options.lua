local g = vim.g
-- Globals
g.have_nerd_font = true
g.mapleader = " "
g.maplocalleader = " "

local o = vim.opt
-- Options
o.mouse = "a"
o.number = true
o.showmode = false
o.breakindent = true
o.undofile = true
o.ignorecase = true
o.smartcase = true
o.signcolumn = "yes"
o.updatetime = 250
o.timeoutlen = 300
o.splitright = true
o.splitbelow = true
o.list = false
o.listchars = { tab = "> ", trail = "·", nbsp = "␣" }
o.inccommand = "split"
o.cursorline = true
o.scrolloff = 18
o.shiftwidth = 4
o.expandtab = true
o.softtabstop = 4
o.tabstop = 4

-- Syncing with system clipboard sometimes slows Neovim startup time.
-- Instead, we can defer the syncing until after the init.lua is ran.
vim.schedule(function()
	o.clipboard = "unnamedplus"
end)
