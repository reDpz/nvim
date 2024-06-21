function gdshader()
	vim.lsp.start({
		name = "gdshader-lsp",
		cmd = {
			"gdshader-lsp",
		},
		capabilities = vim.lsp.protocol.make_client_capabilities(),
	})
end

-- TODO: Create autocmd for gdshader
