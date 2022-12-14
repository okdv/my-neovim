local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then return end

configs.setup({
	ensure_installed = { "bash", "css", "dockerfile", "html", "json", "json5", "lua", "markdown", "regex", "scss", "rust", "ruby", "sql", "svelte", "tsx", "typescript", "vim", "python" }, -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
})
