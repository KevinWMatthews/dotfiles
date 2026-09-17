--[[
Mason, a tooling manager.
https://github.com/mason-org/mason.nvim
--]]
return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			-- Formatters enabled by conform.nvim; see lua/plugins/conform.lua.
			-- Some formatters are expected to be installed to system:
			-- * ruff
			-- * rustfmt
			-- To avoid conflicting tools, these are not installed here.
			ensure_installed = {
				"rumdl",
				"shfmt",
				"stylua",
				"taplo",
				"yamlfix",
			},
		},
	},
}
