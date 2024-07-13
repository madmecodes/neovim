return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{

		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"dockerls",
					"docker_compose_language_service",
					"quick_lint_js",
					"terraformls",
					"gopls",
					"pyright",
					"tsserver",
				},
			})
		end,
	},
	{

		"neovim/nvim-lspconfig",

		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			-- Set up each LSP server
			local servers = {
				"lua_ls",
				"clangd",
				"dockerls",
				"docker_compose_language_service",
				"quick_lint_js",
				"terraformls",
				"gopls",
				"pyright",
				"tsserver",
			}

			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({capabilities = capabilities })
			end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
  require('plugins.go'),  -- Add this line to include the go.lua plugin

}
