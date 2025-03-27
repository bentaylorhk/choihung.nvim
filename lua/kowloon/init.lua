-- Benjamin Michael Taylor (bentaylorhk)
-- 2025

local colors = {
  background     = '#000000',
  foreground     = '#ebdbb2',

  black          = '#a89984',
  red            = '#9d0006',
  green          = '#498303',
  yellow         = '#af3a03',
  blue           = '#076678',
  magenta        = '#8f0059',
  cyan           = '#3a7b53',
  white          = '#7c6f64',

  bright_black   = '#ebdbb2',
  bright_red     = '#cc241d',
  bright_green   = '#619225',
  bright_yellow  = '#ea7b10',
  bright_blue    = '#458588',
  bright_magenta = '#b13a70',
  bright_cyan    = '#689d6a',
  bright_white   = '#928374',
}

local theme = {}

function theme.setup()
  -- Clear existing highlights
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  -- Set the colorscheme name
  vim.g.colors_name = "my_theme"

  -- Basic highlight groups
  vim.api.nvim_set_hl(0, 'Normal', { fg = colors.foreground, bg = colors.background })
  vim.api.nvim_set_hl(0, 'Comment', { fg = colors.bright_black, italic = true })
  vim.api.nvim_set_hl(0, 'Constant', { fg = colors.red })
  vim.api.nvim_set_hl(0, 'String', { fg = colors.green })
  vim.api.nvim_set_hl(0, 'Identifier', { fg = colors.blue })
  vim.api.nvim_set_hl(0, 'Statement', { fg = colors.magenta })
  vim.api.nvim_set_hl(0, 'PreProc', { fg = colors.yellow })
  vim.api.nvim_set_hl(0, 'Type', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, 'Special', { fg = colors.bright_blue })
  vim.api.nvim_set_hl(0, 'Underlined', { fg = colors.bright_magenta, underline = true })
  vim.api.nvim_set_hl(0, 'Todo', { fg = colors.bright_yellow, bold = true })

  -- Terminal colors mapping
  vim.g.terminal_color_0  = colors.black
  vim.g.terminal_color_1  = colors.red
  vim.g.terminal_color_2  = colors.green
  vim.g.terminal_color_3  = colors.yellow
  vim.g.terminal_color_4  = colors.blue
  vim.g.terminal_color_5  = colors.magenta
  vim.g.terminal_color_6  = colors.cyan
  vim.g.terminal_color_7  = colors.white
  vim.g.terminal_color_8  = colors.bright_black
  vim.g.terminal_color_9  = colors.bright_red
  vim.g.terminal_color_10 = colors.bright_green
  vim.g.terminal_color_11 = colors.bright_yellow
  vim.g.terminal_color_12 = colors.bright_blue
  vim.g.terminal_color_13 = colors.bright_magenta
  vim.g.terminal_color_14 = colors.bright_cyan
  vim.g.terminal_color_15 = colors.bright_white
end

return theme
