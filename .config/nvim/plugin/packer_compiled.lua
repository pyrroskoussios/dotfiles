-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/pyrrosk/.cache/nvim/packer_hererocks/2.1.1710088188/share/lua/5.1/?.lua;/Users/pyrrosk/.cache/nvim/packer_hererocks/2.1.1710088188/share/lua/5.1/?/init.lua;/Users/pyrrosk/.cache/nvim/packer_hererocks/2.1.1710088188/lib/luarocks/rocks-5.1/?.lua;/Users/pyrrosk/.cache/nvim/packer_hererocks/2.1.1710088188/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/pyrrosk/.cache/nvim/packer_hererocks/2.1.1710088188/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  LuaSnip = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nù\t\0\0\t\0\26\1/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\5\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\0?\4\0\0=\3\5\0029\2\3\0019\2\4\0029\2\21\2'\3\23\0=\3\22\0029\2\24\0009\4\25\1B\2\2\1K\0\1\0\vconfig\nsetup\fKeyword\ahl\topts\f:qa<CR>\16Quit Neovim\6q\28:e ~/.config/nvim/ <CR>\18Configuration\6c\16:e ~/  <CR>\17Browse Files\6f :ene <BAR> startinsert <CR>\rNew File\6n\vbutton\fbuttons\1\r\0\0J                                                                     J@@@@@@@   @@@@@@@    @@@@@@    @@@@@@@   @@@@@@   @@@  @@@  @@@@@@@@ J@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@ @@@  @@@@@@@@ J@@!  @@@  @@!  @@@  @@!  @@@  !@@       @@!  @@@  @@!@!@@@  @@!      J!@!  @!@  !@!  @!@  !@!  @!@  !@!       !@!  @!@  !@!!@!@!  !@!      J@!@  !@!  @!@!!@!   @!@!@!@!  !@!       @!@!@!@!  @!@ !!@!  @!!!:!   J!@!  !!!  !!@!@!    !!!@!!!!  !!!       !!!@!!!!  !@!  !!!  !!!!!:   J!!:  !!!  !!: :!!   !!:  !!!  :!!       !!:  !!!  !!:  !!!  !!:      J:!:  !:!  :!:  !:!  :!:  !:!  :!:       :!:  !:!  :!:  !:!  :!:      J :::: ::  ::   :::  ::   :::   ::: :::  ::   :::   ::   ::   :: :::: J:: :  :    :   : :   :   : :   :: :: :   :   : :  ::    :   : :: ::  J                                                                     \bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\t€€À™\4\0" },
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cellular-automaton.nvim"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/cellular-automaton.nvim",
    url = "https://github.com/eandrju/cellular-automaton.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["monokai-pro.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16monokai-pro\frequire\0" },
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/monokai-pro.nvim",
    url = "https://github.com/loctvl842/monokai-pro.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/pyrrosk/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: monokai-pro.nvim
time([[Config for monokai-pro.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16monokai-pro\frequire\0", "config", "monokai-pro.nvim")
time([[Config for monokai-pro.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nù\t\0\0\t\0\26\1/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\5\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\0?\4\0\0=\3\5\0029\2\3\0019\2\4\0029\2\21\2'\3\23\0=\3\22\0029\2\24\0009\4\25\1B\2\2\1K\0\1\0\vconfig\nsetup\fKeyword\ahl\topts\f:qa<CR>\16Quit Neovim\6q\28:e ~/.config/nvim/ <CR>\18Configuration\6c\16:e ~/  <CR>\17Browse Files\6f :ene <BAR> startinsert <CR>\rNew File\6n\vbutton\fbuttons\1\r\0\0J                                                                     J@@@@@@@   @@@@@@@    @@@@@@    @@@@@@@   @@@@@@   @@@  @@@  @@@@@@@@ J@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@ @@@  @@@@@@@@ J@@!  @@@  @@!  @@@  @@!  @@@  !@@       @@!  @@@  @@!@!@@@  @@!      J!@!  @!@  !@!  @!@  !@!  @!@  !@!       !@!  @!@  !@!!@!@!  !@!      J@!@  !@!  @!@!!@!   @!@!@!@!  !@!       @!@!@!@!  @!@ !!@!  @!!!:!   J!@!  !!!  !!@!@!    !!!@!!!!  !!!       !!!@!!!!  !@!  !!!  !!!!!:   J!!:  !!!  !!: :!!   !!:  !!!  :!!       !!:  !!!  !!:  !!!  !!:      J:!:  !:!  :!:  !:!  :!:  !:!  :!:       :!:  !:!  :!:  !:!  :!:      J :::: ::  ::   :::  ::   :::   ::: :::  ::   :::   ::   ::   :: :::: J:: :  :    :   : :   :   : :   :: :: :   :   : :  ::    :   : :: ::  J                                                                     \bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\t€€À™\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
