local cmd = vim.cmd

cmd("packadd packer.nvim")

local present, packer = pcall(require, "packer")

if not present then
  local packer_path = vim.fn.stdpath("data")
    .. "/site/pack/packer/opt/packer.nvim"

  print("Cloning packer..")
  -- remove the dir before cloning
  vim.fn.delete(packer_path, "rf")
  vim.fn.system({
    "git",
    "clone",
    "https://github.com/wbthomason/packer.nvim",
    "--depth",
    "20",
    packer_path,
  })

  cmd("packadd packer.nvim")
  present, packer = pcall(require, "packer")

  if present then
    print("Packer cloned successfully.")
  else
    error(
      "Couldn't clone packer !\nPacker path: " .. packer_path .. "\n" .. packer
    )
  end
end

packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end,
    prompt_border = "single",
  },
  git = {
    clone_timeout = 600, -- Timeout, in seconds, for git clones
  },
  auto_clean = true,
  compile_on_sync = true,
  --    auto_reload_compiled = true
})

require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use("kyazdani42/nvim-web-devicons")
  use({
    "NvChad/nvim-base16.lua",
  })
  use({
		"kyazdani42/nvim-tree.lua",
    opt = true,
    cmd = { "NvimTreeToggle" },
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      local tree = require('nvim-tree')
      tree.setup({})
    end
  })
  use("glepnir/lspsaga.nvim")
  use("kabouzeid/nvim-lspinstall")
  use("nvim-treesitter/nvim-treesitter")
  use("neovim/nvim-lspconfig")
  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
  })
  use({
    "akinsho/nvim-bufferline.lua",
    requires = "kyazdani42/nvim-web-devicons",
  })
  use("jiangmiao/auto-pairs")
  use({
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  })
  use({
    "glepnir/dashboard-nvim",
    opt = true,
    cmd = {
      "Dashboard",
      "DashboardChangeColorscheme",
      "DashboardFindFile",
      "DashboardFindHistory",
      "DashboardFindWord",
      "DashboardJumpMarks",
      "DashboardNewfile",
    },
  })
  use({
    "lewis6991/gitsigns.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })
  use("liuchengxu/vista.vim")
  use("folke/which-key.nvim")
  use("tpope/vim-commentary")
  use("kdheepak/lazygit.nvim")
  use({
    "mhartington/formatter.nvim",
    opt = true,
  })
  use({ "tweekmonster/startuptime.vim", opt = true })
  use("p00f/nvim-ts-rainbow")
  use("lukas-reineke/indent-blankline.nvim")
  use("famiu/feline.nvim")
  use("ahmedkhalf/project.nvim")
  use({ "vimwiki/vimwiki", opt = true })
  -- Coq
  use({
    "ms-jpq/coq_nvim",
    branch = "coq",
    requires = {
      {"ms-jpq/coq.artifacts", branch = "artifacts"},
      {"ms-jpq/coq.thirdparty", branch = "3p"},
    },
  })
  -- Rust Analyzer
  use("simrat39/rust-tools.nvim")
  -- nvim dev
  use("folke/lua-dev.nvim")
  -- galaxy line
  -- use("glepnir/galaxyline.nvim")
  -- Editorconfig
  use("gpanders/editorconfig.nvim")
end)
