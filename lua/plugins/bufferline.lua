-- ~/.config/nvim/lua/plugins/bufferline.lua
return {
  "akinsho/bufferline.nvim",
  requires = "nvim-tree/nvim-web-devicons", -- 依赖插件，用于显示文件图标
  config = function()
    require("bufferline").setup {
      options = {
        numbers = "none", -- "none", "ordinal", "buffer_id", "both"
        close_command = "bdelete! %d", -- 可以自定义关闭缓冲区的命令
        right_mouse_command = "bdelete! %d", -- 右键关闭缓冲区
        left_mouse_command = "buffer %d", -- 左键切换到缓冲区
        middle_mouse_command = nil, -- 中键关闭缓冲区
        indicator_icon = "▎",
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15, -- 前缀缓冲区名称
        tab_size = 18,
        diagnostics = false, -- "nvim_lsp", "coc"
        show_buffer_icons = true, -- 是否显示缓冲区图标
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- 保持缓冲区排序
        separator_style = "slant", -- "slant", "thick", "thin"
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = "id", -- 'id', 'extension', 'relative_directory', 'directory'
      },
    }
  end,
}
