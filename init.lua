
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
local opts={}
-- vim.opt.termguicolors = true
--vim.api.nvim_set_hl(0, 'NormalFloat', {fg = LightGrey})
vim.api.nvim_set_hl(0, 'NormalFloat', {fg = '#00FF00', bg = 'NONE'})

require("vim-options")
require("lazy").setup("plugins")







