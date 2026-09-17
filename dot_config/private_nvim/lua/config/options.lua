--[[
-- Set options:
-- https://neovim.io/doc/user/lua-guide/#_options
-- or :help lua-guide-options
--]]
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Enable local repos to run lua files
-- Naively, this can be set with simply:
-- vim.o.exrc = true
-- However, I don't want to fall in to the trap of trusting a project accidentally.
-- Allow this only where it is currently needed: for running rust-analyzer for esp projects
local function in_trusted_dir()
	local cwd = vim.fn.getcwd()
	local allowed = {
		vim.fn.expand("~/esp"),
	}
	for _, dir in ipairs(allowed) do
		-- match the dir itself or anything beneath it
		if cwd == dir or cwd:sub(1, #dir + 1) == dir .. "/" then
			return true
		end
	end
	return false
end

if in_trusted_dir() then
	vim.o.exrc = true
end
