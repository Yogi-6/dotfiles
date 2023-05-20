local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- search
opt.ignorecase = true

-- backspace
opt.backspace = {'indent,eol,start'}

-- clipboard
opt.clipboard:append("unnamedplus")

-- keyword
opt.iskeyword:append("-") -- with this hello-world, it'll delete the entire word

