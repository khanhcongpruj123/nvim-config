return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "navarasu/onedark.nvim",
    config = function(_, otps)
      require("onedark").setup({
        style = "darker",
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true, -- disables setting the background color.
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
}
