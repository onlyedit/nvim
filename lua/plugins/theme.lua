return {
  -- 安装 kanagawa.nvim 主题
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup {
        -- transparent = true, -- 启用背景透明
        colors = {
          theme = {
            all = {
              ui = {
                -- bg_gutter = "none",
              },
            },
          },
        },
      }
      vim.cmd "colorscheme kanagawa"
    end,
  },
}
