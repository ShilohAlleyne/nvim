{
    globals.mapleader = " ";
    keymaps = [
		# Normal Mode
		{
			key          = "<C-Right>";
			action       = "<c-w>l";
			mode         = "n";
			options.desc = "Move focus right";
		}
		{
			key          = "<C-Left>";
			action       = "<c-w>h";
			mode         = "n";
			options.desc = "Move focus left";
		}
		{
			key          = "<C-Up>";
			action       = "<c-w>k";
			mode         = "n";
			options.desc = "Move focus up";
		}
		{
			key          = "<C-Down>";
			action       = "<c-w>j";
			mode         = "n";
			options.desc = "Move focus down";
		}
        {
            key          = "<Leader>w-";
            action       = ":split<CR>";
            mode         = "n";
            options.desc = "Split window horizontally";
        }
        {
            key          = "<Leader>w|";
            action       = ":vsplit<CR>";
            mode         = "n";
            options.desc = "Split window vertically";
        }
        # Lsp actions
        {
            key          = "<leader>cl";
            action       = ":LspInfo<CR>";
            mode         = "n";
            options.desc = "Lsp Info";
        }
        {
            key          = "gd";
            action       = ":lua vim.lsp.buf.definition()<CR>";
            mode         = "n";
            options.desc = "Goto Definition";
        }
        {
            key          = "gr";
            action       = ":lua vim.lsp.buf.references()<CR>";
            mode         = "n";
            options.desc = "References";
        }
        {
            key          = "gI";
            action       = ":lua vim.lsp.buf.implementation()<CR>";
            mode         = "n";
            options.desc = "Goto Implementation";
        }
        {
            key          = "gy";
            action       = ":lua vim.lsp.buf.type_definition()<CR>";
            mode         = "n";
            options.desc = "Goto Type Definition";
        }
        {
            key          = "gD";
            action       = ":lua vim.lsp.buf.declaration()<CR>";
            mode         = "n";
            options.desc = "Goto Declaration";
        }
        {
            key          = "K";
            action       = ":lua vim.lsp.buf.hover()<CR>";
            mode         = "n";
            options.desc = "Hover";
        }
        {
            key          = "gK";
            action       = ":lua vim.lsp.buf.signature_help()<CR>";
            mode         = "n";
            options.desc = "Signature Help";
        }
        {
            key          = "<c-k>";
            action       = ":lua vim.lsp.buf.signature_help()<CR>";
            mode         = "i";
            options.desc = "Signature Help";
        }
        {
            key          = "<leader>ca";
            action       = ":lua vim.lsp.buf.code_action()<CR>";
            mode         = "n";
            options.desc = "Code Action";
        }
        {
            key          = "<leader>cc";
            action       = ":lua vim.lsp.codelens.run()<CR>";
            mode         = "n";
            options.desc = "Run Codelens";
        }
        {
            key          = "<leader>cC";
            action       = ":lua vim.lsp.codelens.refresh()<CR>";
            mode         = "n";
            options.desc = "Refresh & Display Codelens";
        }
        {
            key          = "<leader>cR";
            action       = ":lua vim.lsp.util.rename()<CR>";
            mode         = "n";
            options.desc = "Rename File";
        }
        {
            key          = "<leader>cr";
            action       = ":lua vim.lsp.buf.rename()<CR>";
            mode         = "n";
            options.desc = "Rename";
        }
        {
            key          = "<leader>cA";
            action       = ":lua vim.lsp.buf.code_action({ context = { only = { 'source' }, diagnostics = {} } })<CR>";
            mode         = "n";
            options.desc = "Source Action";
        }
        {
            key          = "]]";
            action       = ":lua vim.diagnostic.goto_next({ float = false })<CR>";
            mode         = "n";
            options.desc = "Next Reference";
        }
        {
            key          = "[[";
            action       = ":lua vim.diagnostic.goto_prev({ float = false })<CR>";
            mode         = "n";
            options.desc = "Prev Reference";
        }
        {
            key          = "<a-n>";
            action       = ":lua vim.diagnostic.goto_next({ float = false })<CR>";
            mode         = "n";
            options.desc = "Next Reference";
        }
        {
            key          = "<a-p>";
            action       = ":lua vim.diagnostic.goto_prev({ float = false })<CR>";
            mode         = "n";
            options.desc = "Prev Reference";
        }
        {
            key          = "<leader>ss";
            action       = ":lua vim.lsp.buf.document_symbol()<CR>";
            mode         = "n";
            options.desc = "LSP Symbols";
        }
        {
            key          = "<leader>sS";
            action       = ":lua vim.lsp.buf.workspace_symbol()<CR>";
            mode         = "n";
            options.desc = "LSP Workspace Symbols";
        }
        {
            key          = "gai";
            action       = ":lua vim.lsp.buf.incoming_calls()<CR>";
            mode         = "n";
            options.desc = "Calls Incoming";
        }
        {
            key          = "gao";
            action       = ":lua vim.lsp.buf.outgoing_calls()<CR>";
            mode         = "n";
            options.desc = "Calls Outgoing";
        }
		# Activate plugins
		{
            key          = "<Leader>ff";
            action       = ":Pick files<CR>";
            mode         = "n";
            options.desc = "Pick files";
        }
        {
            key          = "<Leader>fb";
            action       = ":Pick buffers<CR>";
            mode         = "n";
            options.desc = "Pick buffers";
        }
        {
            key          = "<Leader>-";
            action       = ":Yazi<CR>";
            mode         = "n";
            options.desc = "Open Yazi";
        }
        {
            key          = "<Leader>=";
            action       = ":Oil<CR>";
            mode         = "n";
            options.desc = "Open Oil";
        }
        {
            key          = "<Leader>n";
            action       = ":lua MiniNotify.show_history()<CR>";
            mode         = "n";
            options.desc = "Show notification history";
        }
        {
            key          = "<Leader>x";
            action       = ":Trouble diagnostics toggle<CR>";
            mode         = "n";
            options.desc = "Diagnostics (Trouble)";
        }
        {
            key          = "<Leader>g";
            action       = ":LazyGit<CR>";
            mode         = "n";
            options.desc = "Open Lazygit";
        }
        {
            key          = "<Leader>u";
            action       = ":UndotreeToggle<CR>";
            mode         = "n";
            options.desc = "Open Undotree";
        }
        {
            key          = "<Leader>bd";
            action       = "<Cmd>lua require('mini.bufremove').delete(0, false)<CR>";
            mode         = "n";
            options.desc = "Delete current buffer";
        }
        {
            key          = "<Leader>bo";
            action       = "<Cmd>lua local c=vim.api.nvim_get_current_buf(); for _,b in ipairs(vim.api.nvim_list_bufs()) do if b~=c and vim.api.nvim_buf_is_loaded(b) then require('mini.bufremove').delete(b, false) end end<CR>";
            mode         = "n";
            options.desc = "Delete all other buffers";
        }
		# Insert Mode
		{
			key          = "<C-z>";
			action       = "<C-o>u";
			mode         = "i";
			options.desc = "Undo";
		}
		{
			key          = "<C-r>";
			action       = "<C-o><C-r>";
			mode         = "i";
			options.desc = "Redo";
		}
		# Visual Mode
		{
			key          = "<C-c>";
			action       = "+y";
			mode         = "v";
			options.desc = "Copy";
		}
		{
			key          = "<C-v>";
			action       = "+p";
			mode         = "v";
			options.desc = "Paste";
		}
		{
			key          = "<S-Tab>";
			action       = "<gv";
			mode         = "v";
			options.desc = "Un-ident line";
		}
		{
			key          = "<Tab>";
			action       = ">gv";
			mode         = "v";
			options.desc = "Ident line";
		}
    ];
}
