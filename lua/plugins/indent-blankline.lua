-- ~/.config/nvim/lua/plugins/rainbow-delimiters.lua
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  otps = {
    char = "|", -- 缩进线的字符
    space_char = "·", -- 空格的字符
    space_char_blankline = " ", -- 空行的字符
    show_trailing_blankline_indent = false,
    show_first_indent_level = true,
    use_treesitter = true,
    buftype_exclude = { "terminal" },
    filetype_exclude = { "help", "startify", "dashboard", "packer", "neogitstatus" },
  },
  config = function(_, otps)
    require("ibl").setup(opts)
  end,
}
