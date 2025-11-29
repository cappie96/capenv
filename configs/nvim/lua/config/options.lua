local opt = vim.opt

opt.showmode = false

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.splitright = true
opt.splitbelow = true

vim.diagnostic.config({ virtual_text = true })

vim.schedule(function()
  opt.clipboard = "unnamedplus"
end)
