local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins/autocomplete"),
	require("plugins/autopairs"),
	require("plugins/colorscheme"),
	require("plugins/format"),
	require("plugins/gitsigns"),
	require("plugins/guess-indent"),
	require("plugins/indent-line"),
	require("plugins/lazydev"),
	require("plugins/lsp"),
	require("plugins/mini"),
	require("plugins/telescope"),
	require("plugins/todo-comments"),
	require("plugins/treesitter"),
	require("plugins/which-key"),
})
