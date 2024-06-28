return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,

				-- Go
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.goimports,

				-- Python
				null_ls.builtins.formatting.black,

				-- JavaScript
				null_ls.builtins.formatting.prettier,

				-- Django
				null_ls.builtins.formatting.djlint,
			},
		})
		vim.keymap.set({ "n", "v" }, "<C-f>", vim.lsp.buf.format, {})
	end,
}
