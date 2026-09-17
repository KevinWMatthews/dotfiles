return {
  {
    "Luxed/ayu-vim",
    lazy = false,
    init = function()
      -- set before the colorscheme loads
      vim.opt.termguicolors = true       -- required; ayu only works with true colors
      vim.g.ayucolor = "dark"           -- "light" | "mirage" | "dark" (defaults to "dark")
      vim.g.ayu_italic_comment = 1        -- optional
      vim.g.ayu_extended_palette = 1      -- optional: extra colors on keywords/loops/etc.
    end,
    config = function()
      vim.cmd.colorscheme("ayu")
    end,
  },
}
