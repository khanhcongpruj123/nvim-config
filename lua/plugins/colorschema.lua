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
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
}
