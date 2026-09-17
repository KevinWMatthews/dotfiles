--[[
Welcome to my neovim configuration!

I am learning as I go, so tread lightly :)

The keymap is defined in
./lua/config/keymap.lua

General options are configured in:
./lua/config/options.lua

The colorscheme is defined by a plugin:
./lua/plugins/colorscheme.lua
with additional helpers in:
./lua/coonfig/colorscheme.lua

Package management is done by `lazy.nvim`.
See:
./lua/config/lazy.lua

To see the status of current plugins, run:
:Lazy
or
<leader>l

Syntax highlighting is provided by `nvim-treesitter` and is tuned to nvim v0.11.
A package must be installed for each file type.
To add support for a new language, edit:
./lua/plugins/treesitter.lua

Format-on-save is controlled by `conform`.
See:
./lua/plugins/conform.lua
and check status using:
:ConformInfo

Language server integration is provided by `nvim-lspconfig`.
See:
./lua/plugins/lspconfig.lua

File format settings are processed after configuration is loaded and 
is found in the `after/` directory.

The file picker is neovim's default, and the fuzzy file finder is `telescope`.
See:
./lua/plugins/telescope.lua
--]]
require("config.keymap")
require("config.lazy")
require("config.options")
