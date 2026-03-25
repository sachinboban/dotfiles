-- theme
vim.cmd.colorscheme("habamax")                      -- color theme
--vim.cmd.colorscheme("quiet")                      -- color theme
--vim.cmd.colorscheme("slate")                      -- color theme

-- basics
vim.opt.number = true                               -- display line numbers
vim.opt.relativenumber = true                       -- relative line numbers
vim.opt.cursorline = true                           -- highlight current line
vim.opt.wrap = false

-- indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- search settings
vim.opt.ignorecase = true                           -- case insensitive search
vim.opt.smartcase = true                            -- case sensitive if uppercase in search
vim.opt.hlsearch = true                             -- highlight search results
vim.opt.incsearch = true                            -- show matches as typed

-- visual settings
vim.opt.termguicolors = true                        -- enable 24-bit colors
vim.opt.signcolumn = "yes"                          -- show sign column
vim.opt.colorcolumn = "120"                         -- show vertical line
vim.opt.showmatch = true                            -- show matching brackets
vim.opt.matchtime = 2                               -- show long to show matching brackets
vim.opt.cmdheight = 1                               -- cmd line height
vim.opt.showmode = true                             -- show mode in cmd line
--vim.opt.completeopt = "menuone,noinsert,noselect"
--vim.opt.pumheight = 10
--vim.opt.pumblend = 10
--vim.opt.windblend = 0
--vim.opt.concealallevel = 0
--vim.opt.concealcursor = ""
--vim.opt.lazyredraw = true
--vim.opt.synmaxcol = 300

-- file handling
vim.opt.backup = false                              -- dont create backup files
vim.opt.writebackup = false                         -- dont create backup files before writing
vim.opt.swapfile = false                            -- dont create swap files
vim.opt.undofile = true                             -- persistant undo
vim.opt.undodir = vim.fn.expand ("~/.vim/undodir")  -- undo directory
--vim.opt.updatetime = 300
--vim.opt.timeoutlen = 500
--vim.opt.ttimeoutlen = 0
vim.opt.autoread = true                             -- auto reload files changed outside of nvim
vim.opt.autowrite = false                           -- dont auto save

-- behaviour settings
--vim.opt.hidden = true
vim.opt.errorbells = false                          -- no error bells
vim.opt.backspace = "indent,eol,start"              -- better backspace
--vim.opt.autochdir = false
--vim.opt.iskeyword:append("-")
vim.opt.path:append("**")                           -- include subdirectories in search
--vim.opt.selection = "exclusive"
vim.opt.mouse = "a"                                 -- enable mouse support
vim.opt.clipboard:append("unnamedplus")             -- use system clipboard
--vim.opt.modifiable = true
vim.opt.encoding = "UTF-8"                          -- encoding

-- keymaps
---- search
vim.keymap.set("n", " ", ":nohls<CR>", {desc = "hight highlight till next search"})

---- window splitting & resizing
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", {desc = "Increase window height"})
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", {desc = "Decrease window height"})
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", {desc = "Decrease window widtj"})
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", {desc = "Increase window width"})

---- move lines
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", {desc = "Move line down"})
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", {desc = "Move line up"})
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {desc = "Move selection down"})
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {desc = "Move selection up"})
