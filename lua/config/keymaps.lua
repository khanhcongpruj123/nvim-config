-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set(
  "n",
  "<leader>e",
  "<cmd>Neotree focus<cr>",
  { noremap = true, silent = true, desc = "Forcus directory tree" }
)

vim.keymap.set(
  "n",
  "<leader>rr",
  require("rest-nvim").run,
  { noremap = true, silent = true, desc = "Run rest under cursor" }
)
