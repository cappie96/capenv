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
  "rebelot/kanagawa.nvim",
  init = function()
    vim.cmd("colorscheme kanagawa-lotus")
  end,
}

