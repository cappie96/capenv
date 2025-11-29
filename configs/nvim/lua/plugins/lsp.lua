return {
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  { -- optional cmp completion source for require statements and module annotations
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, {
        name = "lazydev",
        group_index = 0, -- set group index to 0 to skip loading LuaLS completions
      })
    end,
  },
  { -- optional blink completion source for require statements and module annotations
    "saghen/blink.cmp",
    opts = {
      sources = {
        -- add lazydev to your completion providers
        default = { "lazydev", "lsp", "path", "snippets", "buffer" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            -- make lazydev completions top priority (see `:h blink.cmp`)
            score_offset = 100,
          },
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      {
        "mason-org/mason-lspconfig.nvim",
        opts = {
          ensure_installed = {
            "lua_ls",
            "pyright",
            "rust-analyzer"
          },
        },
      },
    },
    config = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(event)
          local map = function(keys, func, desc, mode)
            mode = mode or "n"
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = desc })
          end

          map("gd", function()
            vim.cmd("vsplit")
            vim.lsp.buf.definition()
          end, "Goto Definition")

          map("K", vim.lsp.buf.hover, "Hover Documentation")
          map("gn", vim.lsp.buf.rename, "Rename Variable")
          map("ga", vim.lsp.buf.code_action, "Goto Code Action", { "n", "x" })
          map("gr", vim.lsp.buf.references, "Goto References")
          map("gi", vim.lsp.buf.implementation, "Goto Implementation")
          map("gs", vim.lsp.buf.document_symbol, "Open Document Symbols")
          map("gw", vim.lsp.buf.workspace_symbol, "Open Workspace Symbol")
          map("gt", vim.lsp.buf.type_definition, "Goto Type Definition")
          map("gD", vim.lsp.buf.declaration, "Goto Declaration")
        end,
      })
    end,
  }
}
