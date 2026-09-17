-- The colorscheme is defined by a plugin in plugins/
-- This is a helper function that is specific to the current colorscheme

local mod = {}

function mod.toggle_variant()
  if vim.g.ayucolor == "light" then
    vim.g.ayucolor = "dark"
  elseif vim.g.ayucolor == "dark" then
    vim.g.ayucolor = "mirage"
  else
    vim.g.ayucolor = "light"
  end
end

return mod
