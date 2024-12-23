return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	opts = {
		servers = {
			html = {},
			cssls = {},
			prismals = {},
			pylsp = {},
			gopls = {},
			marksman = {},
			sqls = {},
			clangd = {},
			bashls = {},
			ts_ls = {},
		},
	},
	config = function(_, opts)
		local lspconfig = require("lspconfig")
		local capabilities = require("blink.cmp").get_lsp_capabilities()
		for server, config in pairs(opts.servers) do
			config.capabilities = capabilities
			lspconfig[server].setup(config)
		end

		lspconfig["emmet_ls"].setup({
			capabilities = capabilities,
			filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
		})

		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})
	end,
	keys = {
		{ "gR", "<cmd>FzfLua lsp_references<CR>", desc = "Show LSP references" },
		{ "gd", vim.lsp.buf.declaration, desc = "Go to declaration" },
		{ "gf", "<cmd>FzfLua lsp_definitions<CR>", desc = "Show LSP definitions" },
		{ "gi", "<cmd>FzfLua lsp_implementations<CR>", desc = "Show LSP implementations" },
		{ "gt", "<cmd>FzfLua lsp_typedefs<CR>", desc = "Show LSP type definitions" },
		{ "<leader>ca", vim.lsp.buf.code_action, desc = "See available code actions" },
		{ "<leader>rn", vim.lsp.buf.rename, desc = "Smart rename" },
		{ "<leader>D", "<cmd>FzfLua diagnostics_workspace bufnr=0<CR>", desc = "Show buffer diagnostics" },
		{ "<leader>d", vim.diagnostic.open_float, desc = "Show line diagnostics" },
		{ "[d", vim.diagnostic.goto_prev, desc = "Go to previous diagnostic" },
		{ "]d", vim.diagnostic.goto_next, desc = "Go to next diagnostic" },
		{ "K", vim.lsp.buf.hover, desc = "Show documentation for what is under cursor" },
		{ "<leader>rs", ":LspRestart<CR>", desc = "Restart LSP" },
	},
}
