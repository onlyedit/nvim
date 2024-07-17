-- ~/.config/nvim/lua/config/autocmds.lua
local api = vim.api

-- 设置通用缩进为 2 个空格，替换 Tab
-- api.nvim_create_autocmd("FileType", {
--   pattern = "*",
--   callback = function()
--     if not vim.tbl_contains({ "c", "cpp", "objc", "objcpp" }, vim.bo.filetype) then
--       vim.bo.expandtab = true -- 使用空格代替 Tab
--       vim.bo.shiftwidth = 2 -- 每次缩进 2 个空格
--       vim.bo.tabstop = 2 -- 一个 Tab 显示为 2 个空格
--     end
--   end,
-- })

-- 设置 C/C++ 文件的缩进为 4 个空格，不替换 Tab
api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "objc", "objcpp" },
  callback = function()
    vim.bo.expandtab = false -- 保留 Tab
    vim.bo.shiftwidth = 4 -- 每次缩进 4 个空格
    vim.bo.tabstop = 4 -- 一个 Tab 显示为 4 个空格
  end,
})
