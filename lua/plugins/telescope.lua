return {
  "nvim-telescope/telescope.nvim",
  optional = true,
  opts = function()
    local Util = require("lazyvim.util")
    Util.on_load("telescope.nvim", function()
      require("telescope").load_extension("aerial")
    end)
  end,
  keys = {
    {
      "<leader>ss",
      "<cmd>Telescope aerial<cr>",
      desc = "Goto Symbol (Aerial)",
    },
  },
}
