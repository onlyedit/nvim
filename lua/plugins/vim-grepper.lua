-- ~/.config/nvim/lua/plugins/grepper.lua
return {
  "mhinz/vim-grepper",
  cmd = { "Grepper" },
  keys = {
    { "<leader>gw", ":Grepper -tool rg<CR>", { noremap = true, silent = true } },
    { "<leader>gg", ":Grepper -tool ag<CR>", { noremap = true, silent = true } },
    { "<leader>gf", ":lua SearchCurrentFile()<CR>", { noremap = true, silent = true } },
  },
  config = function()
    -- 定义一个 Lua 函数来执行 vimgrep 搜索当前文件
    function SearchCurrentFile()
      local word = vim.fn.expand "<cword>"
      -- 打开一个输入框，并自动填充光标下的单词
      local search_pattern = vim.fn.input("SearchCurrentFile: ", word)
      -- 构建 vimgrep 命令
      local cmd = "vimgrep /" .. search_pattern .. "/j %"
      -- 执行 vimgrep 命令
      vim.cmd(cmd)
      -- 打开 Quickfix 列表以显示搜索结果
      vim.cmd "copen"
    end

    -- 设置 Grepper 配置（可选）
    vim.g.grepper = {
      tools = { "rg", "ag", "grep" },
      rg = {
        grepprg = "rg --vimgrep --no-heading",
        grepformat = "%f:%l:%c:%m,%f:%l:%m",
      },
      ag = {
        grepprg = "ag --vimgrep",
        grepformat = "%f:%l:%c:%m,%f:%l:%m",
      },
    }
  end,
}
