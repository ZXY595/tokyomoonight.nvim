local config = require("tokyomoonight.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? tokyomoonight.Config
function M.load(opts)
  opts = require("tokyomoonight.config").extend(opts)
  local bg = vim.o.background
  local style_bg = opts.style == "day" and "light" or "dark"

  if bg ~= style_bg then
    if vim.g.colors_name == "tokyomoonight-" .. opts.style then
      opts.style = bg == "light" and (M.styles.light or "day") or (M.styles.dark or "moon")
    else
      vim.o.background = style_bg
    end
  end
  M.styles[vim.o.background] = opts.style
  return require("tokyomoonight.theme").setup(opts)
end

M.setup = config.setup

return M
