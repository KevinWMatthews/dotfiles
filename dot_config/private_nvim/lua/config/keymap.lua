--[[
Docs:

Set keybindings:
https://neovim.io/doc/user/lua/#vim.keymap.set()

Set options:

Execute commands in a keybindings:
https://neovim.io/doc/user/map/#%3CCmd%3E
--]]

--[[
-- Leader key
--
-- The leader key defaults to '\'
-]]
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--[[
-- Lazy.nvim plugin manager
--]]
vim.keymap.set("n", "<leader>l", "<Cmd>Lazy<CR>")

--[[
-- Modify default behavior 
--]]
-- `*` does not automatically move to the next result
vim.keymap.set("n", "*", function()
	vim.fn.setreg("/", "\\<" .. vim.fn.expand("<cword>") .. "\\>")
	vim.opt.hlsearch = true
end, { silent = true })
-- <Esc> clears search highlighting
vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

--[[
-- Helix-style text navigation
--]]
-- Navigate to end of file
vim.keymap.set({ "n", "v" }, "ge", "G")
-- Navigate to beginning of line
vim.keymap.set({ "n", "v" }, "gh", "0")
-- Navigate to beginning of text
vim.keymap.set({ "n", "v" }, "gs", "^")
-- Navigate to end of line
vim.keymap.set("n", "gl", "$")
vim.keymap.set("v", "gl", "$h")

--[[
-- Navigate between splits
--]]
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-q>", "<Cmd>close<CR>")

--[[
-- Navigate between tabs
--]]
vim.keymap.set("n", "<A-h>", "<Cmd>tabprevious<CR>")
vim.keymap.set("n", "<A-l>", "<Cmd>tabnext<CR>")
vim.keymap.set("n", "<A-t>", "<Cmd>tabnew<CR>")
vim.keymap.set("n", "<A-o>", "<Cmd>tabedit %<CR>")
vim.keymap.set("n", "<A-e>", "<Cmd>Texplore<CR>")
vim.keymap.set("n", "<A-q>", "<Cmd>tabclose<CR>")
-- TODO Now used by tmux. Reconfigure these?
-- vim.keymap.set("n", "<A-S-h>", "<Cmd>tabmove -1<CR>")
-- vim.keymap.set("n", "<A-S-l>", "<Cmd>tabmove +1<CR>")

--[[
-- File Picker
--]]
-- See telescope.lua for fuzzy finder keybindings
vim.keymap.set("n", "<leader>e", "<Cmd>Explore<CR>")
vim.keymap.set("n", "<leader>E", "<Cmd>Texplore<CR>")

--[[
-- Save
--]]
vim.keymap.set("n", "<C-s>", "<Cmd>w<CR>")
vim.keymap.set("i", "<C-s>", "<Cmd>write<CR>")

--[[
-- Telescope plugin
--]]
vim.keymap.set("n", "<leader>T", "<Cmd>Telescope<CR>")

--[[
-- Formatter
--
-- NOTE: by default, buffers are formatted automatically on save.
--]]
-- See conform.lua for keybindings

--[[
-- LSP / Language Server
--]]
-- Open the compiler error / move cursor to within error box
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
-- prev diagnostic: [d
-- next diagnostic: ]d

--[[
-- Color scheme
--]]
local function toggle_color_variant()
	local colorscheme = require("config.colorscheme")
	colorscheme.toggle_variant()
	vim.cmd.colorscheme(vim.g.colors_name) -- reload so the new value takes effect
end

vim.keymap.set("n", "<leader>c", toggle_color_variant, { desc = "Toggle light/dark mode" })

--[[
-- Insert a line above
vim.keymap.set('i', ',o', '<Esc>o')
-- Insert a line below
vim.keymap.set('i', ',O', '<Esc>O')
-- Prepend to a line while in insert mode
vim.keymap.set('i', ',I', '<Esc>I')
-- Append to a line while in insert mode
vim.keymap.set('i', ',A', '<Esc>A')
-- Append to a character while in insert mode
vim.keymap.set('i', ',a', '<Esc>a')
-- Append to a word while in insert mode
vim.keymap.set('i', ',e', '<Esc>lea')
vim.keymap.set('i', ',E', '<Esc>Ea')
-- Prepend to a word while in insert mode
vim.keymap.set('i', ',b', '<Esc>bi')
vim.keymap.set('i', ',B', '<Esc>Bi')
--]]

--[[
-- Text / Code editing
--]]
-- TODO This doesn't work?
vim.keymap.set("n", "<C-k>", "gcc", { desc = "Toggle line comment" })
