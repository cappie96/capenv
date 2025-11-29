local map = function(mode, keys, cmd, desc)
  vim.keymap.set(mode, keys, cmd, { desc = desc })
end

map("n", "<leader>nh", "<CMD>nohl<CR>", "Clear Search Highlights")

map("n", "<C-h>", "<C-w><C-h>", "Focus Left")
map("n", "<C-j>", "<C-w><C-j>", "Focus Down")
map("n", "<C-k>", "<C-w><C-k>", "Focus Up")
map("n", "<C-l>", "<C-w><C-l>", "Focus Right")

map("n", "-", "<CMD>Oil<CR>", "Open File Explorer")
