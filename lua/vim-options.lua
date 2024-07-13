vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Navigation between splits using Ctrl+Space followed by arrow keys
vim.api.nvim_set_keymap("n", "<C-Space><Left>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Space><Down>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Space><Up>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Space><Right>", "<C-w>l", { noremap = true, silent = true })


--vim.newfile.set_options({
--  prompt = true, -- prompt the user to enter a path
--  default_dir = vim.fn.getcwd(), -- default to current directory
--})


vim.cmd([[

  nnoremap <leader>nf :lua require'startup'.new_file()<cr>
  nnoremap <leader>cs :Telescope colorscheme<cr>
]])
