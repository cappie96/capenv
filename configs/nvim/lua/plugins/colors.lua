--return {
--  "pineapplegiant/spaceduck",
--  branch = "main",
--  opts = function()
--    vim.cmd("colorscheme spaceduck")
--  end
--}

--return {
--	"rose-pine/neovim",
--	name = "rose-pine",
--	config = function()
--		vim.cmd("colorscheme rose-pine")
--	end
--}

return {
  "thesimonho/kanagawa-paper.nvim",
  lazy = false,
  priority = 1000,
  init = function()
    vim.cmd.colorscheme("kanagawa-paper-ink")
  end,
  opts = {...},
}
