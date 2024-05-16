vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "c", "cc", "cpp", "h", "hh", "py" },
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.expandtab = true
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4
  end,
})
