
-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup({
    require 'mourya/plugin/autopair',
    require 'mourya/plugin/treesitter',
    require 'mourya.plugin.todo',
    require 'mourya.plugin.telescope',
    require 'mourya.plugin.neotree',
    require 'mourya.plugin.lspconfig',
    require 'mourya.plugin.blink-cmp',
    require 'mourya.plugin.gruvbox',
    require 'mourya.plugin.fugitive',
    require 'mourya.plugin.alpha',
    require 'mourya.plugin.lualine',
    require 'mourya.plugin.copilot',
})
