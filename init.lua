local vim = vim

local opt = vim.opt
local cmd = vim.cmd

opt.nu = true
opt.rnu = true

-- plugin list
require("plugins-list")
-- user rc
pcall(require, "rc")
-- key mappings
require("mappings")
-- general configurations
require("options")
-- Plugin configurations
require("plugins")
-- Langauge server configuration
require("lsp-config")
-- Colors
require("colors.highlights")
-- source our mappings last(may change)
cmd("source ~/.config/nvim/viml/maps.vim")
