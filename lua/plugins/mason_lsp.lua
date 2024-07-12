-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  -- mason.nvim
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  -- mason-lspconfig.nvim
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "clangd" }, -- 仅安装 clangd
      }
    end,
  },
  -- nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require "lspconfig"

      -- 配置 clangd 服务器
      local on_attach = function(client, bufnr)
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
      end

      lspconfig.clangd.setup {
        on_attach = on_attach,
        cmd = { "clangd", "--background-index", "--suggest-missing-includes" },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
        init_options = {
          clangdFileStatus = true,
        },
        settings = {
          clangd = {
            fallbackFlags = { "-std=c++17" },
          },
        },
      }
    end,
  },
}
