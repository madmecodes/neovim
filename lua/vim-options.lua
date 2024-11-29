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

-- Toggle terminal
vim.api.nvim_set_keymap("n", "<leader>t", ":botright split | terminal<CR>", { noremap = true, silent = true })

-- Exit terminal mode with Escape
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Create vertical split
vim.api.nvim_set_keymap("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true })

function _G.create_new_file()
	local path = vim.fn.input("New file path: ", vim.fn.getcwd() .. "/", "file")
	if path ~= "" then
		-- Create directories if they don't exist
		local dir = vim.fn.fnamemodify(path, ":h")
		if vim.fn.isdirectory(dir) == 0 then
			vim.fn.mkdir(dir, "p")
		end
		-- Edit the new file
		vim.cmd("edit " .. path)
	end
end

vim.opt.clipboard = "unnamedplus"

-- Change this line to use your custom function instead of startup's new_file
vim.keymap.set("n", "<leader>nf", ":lua create_new_file()<CR>", { noremap = true, silent = true })
vim.cmd([[
  nnoremap <leader>cs :Telescope colorscheme<cr>
]])
