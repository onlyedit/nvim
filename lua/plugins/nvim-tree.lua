return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
    -- 设置快捷键
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
  end,
}
