-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

------ Keymaps for debuging
vim.keymap.set("n", "<leader>dd", require("dapui").toggle, { noremap = true, silent = true, desc = "Toggle DAP UI" })
vim.keymap.set(
  "n",
  "<leader>db",
  require("dap").toggle_breakpoint,
  { noremap = true, silent = true, desc = "Toggle break point" }
)

vim.keymap.set(
  "n",
  "<leader>e",
  "<cmd>Neotree focus<cr>",
  { noremap = true, silent = true, desc = "Forcus directory tree" }
)
