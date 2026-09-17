-- For a list of supported languages, see
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/README.md#supported-languages

local to_install = {
	"asm",
	"bash",
	"c",
	"cmake",
	"cpp",
	"diff",
	"disassembly",
	"editorconfig",
	"git_config",
	"git_rebase",
	"gitcommit",
	"gitignore",
	"json",
	"just",
	"linkerscript",
	"lua",
	"make",
	"markdown",
	"markdown_inline",
	"objdump",
	"proto",
	"python",
	"regex",
	"rust",
	"ssh_config",
	"toml",
	"tmux",
	"udev",
	"vim",
	"vimdoc",
	"yaml",
}

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = to_install,
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
