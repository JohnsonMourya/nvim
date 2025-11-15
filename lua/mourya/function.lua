
local function Djhtml()
  vim.cmd('set filetype=htmldjango')        
end

vim.api.nvim_create_user_command('Dhtml', Djhtml, {
  desc = "set file to htmldjango",
  nargs = 0.
})
