-- https://gist.github.com/benfrain/97f2b91087121b2d4ba0dcc4202d252f

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require("ns/plugins")
require("ns/config")
require("ns/keybinding")
