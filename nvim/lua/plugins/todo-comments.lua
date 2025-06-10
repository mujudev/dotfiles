return {
	"folke/todo-comments.nvim",
	event = "VimEnter",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = { signs = false },
	config = function(_, opts)
		require("todo-comments").setup(opts)
		vim.keymap.set("n", "<leader>sq", "<cmd>TodoTelescope<CR>", { desc = "[S]earch [Q]uickFixes" })
	end,
}
