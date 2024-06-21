local lsp = require("lsp-zero").preset({ "recommended" })
-- local navic = require("nvim-navic")
-- vim.o.winbar = " %{%v:lua.require'nvim-navic'.get_location()%}"

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)

local on_attach = lsp.on_attach

-- (Optional) Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

-- inlay hints
-- vim.lsp.inlay_hint.enable()

lsp.skip_server_setup({ "jdtls" })

lsp.setup()

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	update_in_insert = true,
})

-- Setup language servers.
local capabilities = vim.lsp.protocol.make_client_capabilities()
local lspconfig = require("lspconfig")
lspconfig.pyright.setup({})
lspconfig.nil_ls.setup({})
lspconfig.clangd.setup({})
lspconfig.yamlls.setup({
	settings = {
		yaml = {
			schemas = {
				kubernetes = "/*.yaml",
			},
		},
	},
})
lspconfig.csharp_ls.setup({})
--[[lspconfig.omnisharp.setup({
	capabilities = capabilities,
	cmd = { "dotnet", vim.fn.stdpath("data") .. "/mason/packages/omnisharp/libexec/OmniSharp.dll" },
	enable_import_completion = true,
	organize_imports_on_format = true,
	enable_roslyn_analyzers = true,
	--[[ root_dir = function()
		return vim.loop.cwd() -- current working directory
	end, ]
})]]

lspconfig.gdscript.setup(capabilities)

-- not setup due to rustaceanvim
-- lspconfig.rust_analyzer.setup({})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-i>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set("n", "<space>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<space>f", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "jdtls" },
})

--[[ require('mason-lspconfig').setup_handlers({
  function(server)
    lspconfig[server].setup({})
  end,
}) ]]

-- cpp

-- all servers
local servers = { "clangd" }
for _, lsp2 in pairs(servers) do
	require("lspconfig")[lsp2].setup({
		on_attach = on_attach,
		debounce_text_changes = 150,
	})
end
