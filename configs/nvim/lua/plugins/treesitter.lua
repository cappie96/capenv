return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = { "bash", "c", "go", "lua", "markdown", "python", "yaml" },
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  }
}
