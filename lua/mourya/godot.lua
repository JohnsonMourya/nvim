
-- gdscript language server configuration for Neovim
local port = os.getenv('GDSCRIPT_LSP_PORT') or '6009'
local cmd = vim.lsp.rpc.connect('127.0.0.1', tonumber(port))

-- paths to check for project.godot file
local paths_to_check = {'/', '/../'}
local is_godot_project = false
local godot_project_path = ''
local cwd = vim.fn.getcwd()

-- iterate over paths and check
for key, value in pairs(paths_to_check) do
    if vim.uv.fs_stat(cwd .. value .. 'project.godot') then
       is_godot_project = true 
       godot_project_path = cwd .. value
       break
    end
end

-- check if server is already running in godot project path
local is_server_running = vim.uv.fs_stat(godot_project_path .. '/server.pipe')
-- start server, if not already running
if is_godot_project and not is_server_running then
   vim.fn.serverstart(godot_project_path .. '/server.pipe') 
end
