-- Function to check if a floating dialog exists and if not
-- then check for diagnostics under the cursor
function OpenDiagnosticIfNoFloat()
	for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
		if vim.api.nvim_win_get_config(winid).zindex then
			return
		end
	end
	-- THIS IS FOR BUILTIN LSP
	vim.diagnostic.open_float(nil, {
		scope = "cursor",
		focusable = false,
		close_events = {
			"CursorMoved",
			"CursorMovedI",
			"BufHidden",
			"InsertCharPre",
			"WinLeave",
		},
		border = "single",
	})
end

-- Show diagnostics under the cursor when holding position
vim.o.updatetime = 150
vim.api.nvim_create_augroup("lsp_diagnostics_hold", { clear = true })
vim.api.nvim_create_autocmd({ "CursorHold" }, {
	pattern = "*",
	command = "lua OpenDiagnosticIfNoFloat()",
	group = "lsp_diagnostics_hold",
})

local api = vim.api
local keymap = vim.keymap
-- Enable inlay hints when possible (require neovim v0.10.0)
-- take from: https://github.com/nix-community/kickstart-nix.nvim/blob/6b28fa398a69b99318bde099fb9566eead5fa02e/nvim/plugin/autocommands.lua#L94
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local bufnr = ev.buf
		local client = vim.lsp.get_client_by_id(ev.data.client_id)

		-- Attach plugins
		-- require("nvim-navic").attach(client, bufnr)

		vim.cmd.setlocal("signcolumn=yes")
		vim.bo[bufnr].bufhidden = "hide"

		-- Enable completion triggered by <c-x><c-o>
		vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
		local function desc(description)
			return { noremap = true, silent = true, buffer = bufnr, desc = description }
		end
		keymap.set("n", "<A-CR>", vim.lsp.buf.code_action, desc("[lsp] code action"))
		keymap.set("n", "<A-l>", vim.lsp.codelens.run, desc("[lsp] run code lens"))
		keymap.set("n", "<leader>rc", vim.lsp.codelens.refresh, desc("[lsp] refresh code lenses"))

		-- enable inlay hints if available
		if client.server_capabilities.inlayHintProvider then
			vim.lsp.inlay_hint.enable()
		end

		-- Auto-refresh code lenses
		if not client then
			return
		end
		local function buf_refresh_codeLens()
			vim.schedule(function()
				if client.server_capabilities.codeLensProvider then
					vim.lsp.codelens.refresh()
					return
				end
			end)
		end
		local group = api.nvim_create_augroup(string.format("lsp-%s-%s", bufnr, client.id), {})
		if client.server_capabilities.codeLensProvider then
			vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost", "TextChanged" }, {
				group = group,
				callback = buf_refresh_codeLens,
				buffer = bufnr,
			})
			buf_refresh_codeLens()
		end
	end,
})
