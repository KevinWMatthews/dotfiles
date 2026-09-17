return {
	"nvim-telescope/telescope.nvim",
	version = "v0.2.1", -- pin to latest stable release tag
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended for performance:
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		require("telescope").setup({})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

		-- load the native sorter if you installed telescope-fzf-native:
		require("telescope").load_extension("fzf")
	end,
}
