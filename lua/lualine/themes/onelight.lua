local colors = require("onedarkpro.helpers").get_colors("onelight")
local config = require("onedarkpro.config")

local onedarkpro = {}

onedarkpro.normal = {
	a = { bg = colors.cyan_dark, fg = colors.bg },
	b = { bg = colors.fg_gutter, fg = colors.cyan_dark },
	c = { bg = config.options.lualine_transparency and colors.none or colors.bg_statusline, fg = colors.fg },
}

onedarkpro.insert = {
	a = { bg = colors.orange, fg = colors.fg },
	b = { bg = colors.fg_gutter, fg = colors.orange },
}

onedarkpro.command = {
	a = { bg = colors.purple, fg = colors.bg },
	b = { bg = colors.fg_gutter, fg = colors.purple },
}

onedarkpro.visual = {
	a = { bg = colors.yellow, fg = colors.bg },
	b = { bg = colors.fg_gutter, fg = colors.yellow },
}

onedarkpro.replace = {
	a = { bg = colors.blue, fg = colors.fg },
	b = { bg = colors.fg_gutter, fg = colors.blue },
}

local inactive_bg = config.options.highlight_inactive_windows and colors.color_column or colors.bg
onedarkpro.inactive = {
	a = { bg = inactive_bg, fg = colors.blue },
	b = { bg = inactive_bg, fg = colors.fg_gutter_inactive, gui = "bold" },
	c = { bg = config.options.lualine_transparency and colors.none or inactive_bg, fg = colors.fg_gutter_inactive },
}

return onedarkpro
