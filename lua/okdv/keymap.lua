local opts = { noremap = true, silent = true }

local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    opts
)
end

vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Plugins
key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
key_mapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
key_mapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
key_mapper('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
key_mapper('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>')
key_mapper('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
key_mapper('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<CR>')
key_mapper('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')
key_mapper("n", '<leader>tt', ':NvimTreeToggle<CR>')
key_mapper("n", '<leader>ff', ':lua require("telescope.builtin").find_files()<CR>')
key_mapper("n", '<leader>fh', ':Telescope help_tags<CR>')
key_mapper("n", '<leader>ch', ':Telescope command_history<CR>')

-- Normal --
-- Better window navigation
key_mapper("n", "<C-h>", "<C-w>h")
key_mapper("n", "<C-j>", "<C-w>j")
key_mapper("n", "<C-k>", "<C-w>k")
key_mapper("n", "<C-l>", "<C-w>l")

-- Resize with arrows
key_mapper("n", "<C-Up>", ":resize -2<CR>")
key_mapper("n", "<C-Down>", ":resize +2<CR>")
key_mapper("n", "<C-Left>", ":vertical resize -2<CR>")
key_mapper("n", "<C-Right>", ":vertical resize +2<CR>")

-- Navigate buffers
key_mapper("n", "<S-l>", ":bnext<CR>")
key_mapper("n", "<S-h>", ":bprevious<CR>")

-- Move text up and down
key_mapper("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
key_mapper("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

-- Insert --
-- Press jk fast to exit insert mode 
key_mapper("i", "jk", "<ESC>")

-- Visual --
-- Stay in indent mode
key_mapper("v", "<", "<gv")
key_mapper("v", ">", ">gv")

-- Move text up and down
key_mapper("v", "<A-j>", ":m .+1<CR>==")
key_mapper("v", "<A-k>", ":m .-2<CR>==")
key_mapper("v", "p", '"_dP')

-- Visual Block --
-- Move text up and down
key_mapper("x", "J", ":move '>+1<CR>gv-gv")
key_mapper("x", "K", ":move '<-2<CR>gv-gv")
key_mapper("x", "<A-j>", ":move '>+1<CR>gv-gv")
key_mapper("x", "<A-k>", ":move '<-2<CR>gv-gv")

