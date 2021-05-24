-- local custom_vivendi = require'lualine.themes.modus_vivendi'

--custom_vivendi.normal.c.fg = '#b3b3b3'
--custom_vivendi.insert.c.fg = '#b3b3b3'
--custom_vivendi.visual.c.fg = '#b3b3b3'
--custom_vivendi.replace.c.fg = '#b3b3b3'
--custom_vivendi.command.c.fg = '#b3b3b3'

require('lualine').setup{
  options = {
    theme = 'modus_vivendi',
    section_separators = {'', ''},
    component_separators = {'|', '|'},
    icons_enabled = true,
    padding = 1,
  },
  sections = {
    lualine_a = { {'mode', upper = true, icon = ''} 
  },
    lualine_b = { {'branch', icon = ''}, {'diff', colored = true, symbols = {
        added = ' ',
        modified = ' ',
        removed = ' '
      },
      color_added = '#88cf88',
      color_modified = '#a0bfdf',
      color_removed = '#ffa0a0'
} },
    lualine_c = { {'filename', file_status = true, icon ='', shorten = true} },
    lualine_x = { 'encoding', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location'  },
  },
  inactive_sections = {
    lualine_a = {  },
    lualine_b = {  },
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {  },
    lualine_z = {   }
  },
  extensions = { },
}
