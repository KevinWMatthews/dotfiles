return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Format the current buffer
			"<leader>f",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
		{
			-- Toggle formatting for the current buffer
			"<leader>tf",
			function()
				vim.b.disable_autoformat = not vim.b.disable_autoformat
				vim.notify("Format on save (buffer): " .. (vim.b.disable_autoformat and "OFF" or "ON"))
			end,
			mode = "n",
			desc = "Toggle buffer-specific format on save",
		},
		{
			-- Toggle formatting for all buffers
			"<leader>tF",
			function()
				vim.g.disable_autoformat = not vim.g.disable_autoformat
				vim.notify("Format on save (global): " .. (vim.g.disable_autoformat and "OFF" or "ON"))
			end,
			mode = "n",
			desc = "Toggle global format on save",
		},
	},
	-- This will provide type hinting with LuaLS
	---@module "conform"
	---@type conform.setupOpts
	opts = {
		formatters_by_ft = {
			bash = { "shfmt" },
			-- gotmpl = { "chezmoi" },
			-- TODO instal gotmplfmt
			-- gohugoio/gotmplfmt
			lua = { "stylua" },
			markdown = { "rumdl" },
			python = { "ruff" },
			rust = { "rustfmt" },
			sh = { "shfmt" },
			toml = { "taplo" },
			yaml = { "yamlfix" },
		},
		-- Set default options
		default_format_opts = {
			lsp_format = "fallback",
		},
		-- Set up format-on-save
		-- Block form is always and automatically enabled
		-- format_on_save = { timeout_ms = 500 },
		-- Function form is configurable
		format_on_save = function(bufnr)
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end
			return { timeout_ms = 500 }
		end,
		-- Customize formatters
		formatters = {
			rustfmt = {
				options = {
					default_edition = "2024",
					nightly = false,
				},
			},
			shfmt = {
				-- Set indentation to two spaces
				-- append_args = { "-i", "2" },
			},
		},
	},
	-- TODO Learn about this
	--[[
	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
  --]]
}
