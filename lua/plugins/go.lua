return {
  "fatih/vim-go",
  run = ":GoUpdateBinaries",
  config = function()
    vim.g.go_auto_sameids = 1
    vim.g.go_fmt_command = "goimports"
  end,
}
