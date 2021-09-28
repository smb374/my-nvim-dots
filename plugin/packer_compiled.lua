-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/poyehchen/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/poyehchen/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/poyehchen/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/poyehchen/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/poyehchen/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["coq.artifacts"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/coq.artifacts"
  },
  ["coq.thirdparty"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/coq.thirdparty"
  },
  coq_nvim = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/coq_nvim"
  },
  ["dashboard-nvim"] = {
    commands = { "Dashboard", "DashboardChangeColorscheme", "DashboardFindFile", "DashboardFindHistory", "DashboardFindWord", "DashboardJumpMarks", "DashboardNewfile" },
    loaded = false,
    needs_bufread = false,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["editorconfig.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/editorconfig.nvim"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["formatter.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/opt/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/lua-dev.nvim"
  },
  ["nvim-base16.lua"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/nvim-base16.lua"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle" },
    config = { "\27LJ\1\2;\0\0\3\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\1\2\0002\2\0\0>\1\2\1G\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/project.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/rust-tools.nvim"
  },
  ["startuptime.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/opt/startuptime.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  vimwiki = {
    loaded = false,
    needs_bufread = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/opt/vimwiki"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/vista.vim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/poyehchen/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DashboardNewfile lua require("packer.load")({'dashboard-nvim'}, { cmd = "DashboardNewfile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DashboardFindHistory lua require("packer.load")({'dashboard-nvim'}, { cmd = "DashboardFindHistory", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Dashboard lua require("packer.load")({'dashboard-nvim'}, { cmd = "Dashboard", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DashboardJumpMarks lua require("packer.load")({'dashboard-nvim'}, { cmd = "DashboardJumpMarks", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DashboardFindWord lua require("packer.load")({'dashboard-nvim'}, { cmd = "DashboardFindWord", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DashboardChangeColorscheme lua require("packer.load")({'dashboard-nvim'}, { cmd = "DashboardChangeColorscheme", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DashboardFindFile lua require("packer.load")({'dashboard-nvim'}, { cmd = "DashboardFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
