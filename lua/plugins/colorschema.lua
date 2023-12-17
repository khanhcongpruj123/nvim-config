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
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
