local group = vim.api.nvim_create_augroup('minimus', { clear = true })

local mode_names = {
  ['n'] = 'Normal',
  ['no'] = 'Normal',
  ['i'] = 'Insert',
  ['v'] = 'Visual',
  ['vo'] = 'Visual',
  ['V'] = 'Visual',
  [''] = 'Visual',
  ['s'] = 'Select',
  ['S'] = 'Select',
  ['R'] = 'Replace',
  ['c'] = 'Command',
  ['t'] = 'Terminal',
  ['nt'] = 'TerminalNormal',
}

local function get_color(evt)
  evt = evt or ''

  local hl
  local hydra = package.loaded.hydra and require 'hydra.statusline'
  if hydra and hydra.is_active() and evt ~= 'HydraLeave' then
    local color = hydra.get_color()
    if color == 'pink' then
      hl = 'HydraPink'
    elseif color == 'red' then
      hl = 'HydraRed'
    elseif color == 'blue' then
      hl = 'HydraBlue'
    elseif color == 'teal' then
      hl = 'HydraTeal'
    elseif color == 'amaranth' then
      hl = 'HydraAmaranth'
    end
  else
    local mode = mode_names[vim.api.nvim_get_mode().mode] or 'Normal'
    hl = mode .. 'Mode'
  end

  return { link = hl }
end

local function update_mode(ev)
  local hl = get_color(ev.file)
  vim.api.nvim_set_hl(0, 'CurrentMode', hl)
end

update_mode {}

vim.api.nvim_create_autocmd({ 'ModeChanged' }, {
  group = group,
  callback = update_mode,
})
vim.api.nvim_create_autocmd('User', {
  pattern = { 'HydraEnter', 'HydraLeave' },
  group = group,
  callback = function(ev)
    update_mode(ev)
    vim.api.nvim_set_hl(0, 'HydraBorder', { link = 'CurrentMode' })
  end,
})
