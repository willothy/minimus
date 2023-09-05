local sourced_filename = (function()
  return vim.fn.fnamemodify(vim.fs.normalize(debug.getinfo(2, 'S').source:sub(2)), ':p')
end)()

local minimus_path = vim.fn.fnamemodify(sourced_filename, ':h')

if not pcall(require, 'minimus') then
  -- Add minimus plugin to runtimepath
  vim.opt.rtp:prepend(minimus_path)
end

if not pcall(require, 'lush') then
  local lush_path = vim.fn.stdpath 'cache' .. '/minimus/lush/'

  if not vim.loop.fs_stat(lush_path .. '.git/') then
    if vim.loop.fs_stat(lush_path) then
      vim.fn.delete(lush_path, 'rf')
    end
    vim.fn.mkdir(lush_path, 'p')

    local cmd = {
      'git',
      'clone',
    }
    local repo = 'rktjmp/lush.nvim'
    table.insert(cmd, string.format('https://github.com/%s', repo))
    table.insert(cmd, lush_path)
    vim.system(cmd, { text = true }):wait()
  end

  vim.opt.rtp:prepend(lush_path)
end

require 'minimus'
local theme = require 'minimus.spec'

local compiled = require 'lush.compiler'(theme)

local rt_file = io.open(minimus_path .. '/lua/minimus/runtime.lua', 'r')
local runtime = rt_file:read '*a'
rt_file:close()

local code = ([[
-- THE FOLLOWING IS AUTO-GENERATED, DO NOT MODIFY --
local spec = %s

%s

for k, v in pairs(spec) do
  vim.api.nvim_set_hl(0, k, v)
end
]]):format(vim.inspect(compiled), runtime)

local f = io.open(minimus_path .. '/colors/minimus.lua', 'w')
if f then
  f:write(code)
  f:close()
end

if vim.g.colors_name == 'minimus' then
  vim.cmd.colorscheme 'minimus'
end
