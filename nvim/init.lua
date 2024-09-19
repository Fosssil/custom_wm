vim.cmd("set showmatch")
vim.cmd("set ignorecase")
vim.cmd("set hlsearch")
vim.cmd("set incsearch")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=4")
vim.cmd("set autoindent")
vim.cmd("set number")
vim.cmd("set wildmode=longest,list")
vim.cmd("set mouse=")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set cursorline")
vim.cmd("set ttyfast")
vim.cmd("syntax on")
vim.cmd("filetype plugin on")
vim.cmd("filetype plugin indent on")

vim.g.mapleader = " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
local opts = {}

require("lazy").setup("plugins")


