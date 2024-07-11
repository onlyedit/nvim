return {
  "windwp/nvim-spectre",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("spectre").setup()

    -- 设置快捷键
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "<leader>sr", ':lua require("spectre").open()<CR>', opts) -- 打开 Spectre
    vim.api.nvim_set_keymap("n", "<leader>sw", ':lua require("spectre").open_visual({select_word=true})<CR>', opts) -- 搜索光标下的单词
    vim.api.nvim_set_keymap("v", "<leader>sw", ':lua require("spectre").open_visual()<CR>', opts) -- 搜索选中的文本
    vim.api.nvim_set_keymap("n", "<leader>sp", ':lua require("spectre").open_file_search({select_word=true})<CR>', opts) -- 搜索当前文件
  end,
}
