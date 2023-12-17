vim.opt.backup = false            -- no backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.fileencoding = "utf-8"    -- the encoding written to a file
vim.opt.hlsearch = true           -- highlight all matches on previous search pattern
vim.opt.ignorecase = true         -- ignore case in search patterns
vim.opt.smartcase = true          -- do not ignore case when an upper case is explicitly used
vim.opt.mousemodel = "extend"     -- no more right click menu
vim.opt.showmode = false          -- we don't need to see things like -- INSERT -- anymore
vim.opt.smartindent = true        -- make indenting smarter again
vim.opt.splitbelow = true         -- force all horizontal splits to go below current window
vim.opt.splitright = true         -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false          -- no swap file
vim.opt.termguicolors = true      -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 200          -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true           -- enable persistent undo
vim.opt.updatetime = 300          -- faster completion (4000ms default)
vim.opt.writebackup = false       -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true          -- convert tabs to spaces
vim.opt.shiftwidth = 4            -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4               -- insert 4 spaces for a tab
vim.opt.cursorline = true         -- highlight the current line
vim.opt.number = true             -- line numbers
vim.opt.relativenumber = true     -- relative line numbers
vim.opt.wrap = false              -- display lines as one long line
vim.opt.cmdheight = 0             -- disable cmdheight until used
vim.opt.shortmess:append("WcC")   -- less noisy notifications
vim.opt.scrolloff = 5             -- keep cursor within sight
vim.opt.foldmethod = "expr"       -- treesitter syntax aware folding
vim.opt.foldenable = false        -- do not autofold
vim.opt.pumheight = 15            -- prevents massive pummenu
vim.opt.virtualedit = "block"     -- select whatever in visual block mode
vim.opt.shell = "/bin/fish"       -- shell
vim.o.stal = 0                    -- disable tabline