

local theme = require("lualine.themes.rose-pine")
local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }
for _, mode in ipairs(modes) do
  theme[mode].c.bg = "NONE"
end

theme.normal.b.bg = "#242430"
theme.normal.b.bg = "#242430"
theme.inactive.b.bg = "#242430"
theme.command.b.bg = "#242430"
theme.insert.b.bg = "#242430"
theme.replace.b.bg = "#242430"
theme.visual.b.bg = "#242430"

require("lualine").setup({
  options = {
    theme = theme,
  },
})
