return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    requires = { "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "clangd" }, -- 根据需要添加更多的 LSP 服务器
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require "lspconfig"

      -- 配置 Lua 语言服务器
      lspconfig.lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      }

      lspconfig.clangd.setup {}
      -- 配置 Python 语言服务器
      -- lspconfig.pyright.setup {}

      -- 配置 TypeScript 语言服务器
      -- lspconfig.tsserver.setup {}
    end,
  },
}
