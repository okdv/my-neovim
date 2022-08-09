 local options = {
     number = true,
     numberwidth = 4,
     relativenumber = false,
     mouse = 'a',
     wrap = false,
     scrolloff = 8, 
     sidescrolloff = 8, 
     ignorecase = true,
     tabstop = 2,
     shiftwidth = 2,
     showtabline = 2,
     softtabstop = 2,
     expandtab = true,
     splitright = true,
     splitbelow = true,
     backup = false,
     clipboard = "unnamedplus",
     cmdheight = 2,
     completeopt = { "menuone", "noselect" },
     conceallevel = 0,
     fileencoding = "utf-8",
     showmatch = true,
     hlsearch = true,
     pumheight = 10,
     smartcase = true,
     smartindent = true,
     swapfile = false,
     timeoutlen = 100,
     undofile = true,
     updatetime = 300,
     writebackup = false,
     cursorline = true,
     numberwidth = 4,
     signcolumn = "yes",
} 

vim.opt.shortmess:append "c"

 for key, val in pairs(options) do
     vim.opt[key] = val
 end

 vim.cmd("set whichwrap+=<,>,[,],h,l")
 vim.cmd([[set iskeyword+=-]])

