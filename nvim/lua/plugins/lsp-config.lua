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
					"ansiblels",
					"bashls",
					"pylsp",
					"cssls",
					"yamlls",
					"clangd",
					"html",
					"harper_ls",
					"terraformls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.ansiblels.setup({})
			lspconfig.bashls.setup({})
			lspconfig.pylsp.setup({})
			lspconfig.cssls.setup({})
			lspconfig.yamlls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.html.setup({})
			lspconfig.harper_ls.setup({})
			lspconfig.terraformls.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
