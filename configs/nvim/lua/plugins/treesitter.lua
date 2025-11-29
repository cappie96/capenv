return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  main = "nvim-treesitter.configs", -- set the main module to use for opts
  opts = {
    ensure_installed = { "bash", "lua", "python", "go", "rust" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true, disable = { "rust" } }
  }
}
