vim.opt.background = 'dark'
vim.g.colors_name = 'minimus'

package.loaded['minimus'] = nil

require('lush')(require('minimus'))
