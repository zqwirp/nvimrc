require('plugins')

local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

opt.number = true
cmd 'colorscheme iceberg'

opt.tabstop = 2
opt.softtabstop = 2 opt.shiftwidth = 2
opt.expandtab = true
opt.shiftround = true
opt.splitright = true
opt.splitbelow = true

opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- default
-- nocompatible
-- encoding = utf-8
