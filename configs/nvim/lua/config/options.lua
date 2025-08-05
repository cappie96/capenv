-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.have_nerd_font = true

-- set line and relative line numbers to move easily through files
vim.opt.number = true
vim.opt.relativenumber = true

-- enable the mouse
vim.opt.mouse = 'a'

--[[
sync the clipboard between the OS and NVIM
schedule this after UIEnter as it can increase startup time
--]]
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true

-- set the level of indentation
vim.opt.shiftwidth = 4
-- insert spaces instead of tab characters
vim.opt.expandtab = true
vim.opt.tabstop = 4

vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    require('lazy').update({ show = false })
  end
})
