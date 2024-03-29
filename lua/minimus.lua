local palette = {}

palette.hex = {
  turquoise = '#5de4c7',
  tiffany_blue = '#85e2da',
  pale_azure = '#89ddff',
  uranian_blue = '#add7ff',
  powder_blue = '#91b4d5',
  cadet_gray = '#8da3bf',
  cool_gray = '#7f92aa',
  purple_gray = '#8f94c1',
  raisin_black = '#1b1e28',
  colombia_blue = '#c5d2df',
  persian_red = '#be3937',
  lemon_chiffon = '#fffac2',
  tea_rose = '#e8b1b0',
  lavender_pink = '#fcc5e9',
  pale_purple = '#fee4fc',
  pale_turquoise = '#baf5e8',
  white = '#f1f1f1',
  black = '#1f1f1f',
  ----------------------
  gunmetal = '#303340',
  dark_blue = '#26283f',
  github_dark = '#0d1117',
  ----------------------
  rosewater = '#F5E0DC',
  flamingo = '#F2CDCD',
  pink = '#F5C2E7',
  mauve = '#CBA6F7',
  red = '#F38BA8',
  maroon = '#EBA0AC',
  peach = '#FAB387',
  yellow = '#F9E2AF',
  green = '#A6E3A1',
  teal = '#94E2D5',
  sky = '#89DCEB',
  sapphire = '#74C7EC',
  blue = '#89B4FA',
  lavender = '#B4BEFE',
  ---------------------
  text = '#e4f0fb',
  none = 'none',
}

setmetatable(palette, {
  __index = function(_, k)
    local hsl = require('lush').hsl
    local val = palette.hex[k]
    if val then
      if val == 'none' then
        return val
      end
      return hsl(val)
    end
  end,
})

return palette
