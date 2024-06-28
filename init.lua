local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
local opts = {}
 vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#00FF00", bg = "#a9a9a9" })
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
      require("startup").display()
    end
  end,
})
require("vim-options")
require("relative-number")
require("lazy").setup("plugins")
