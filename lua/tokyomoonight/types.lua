---@class tokyomoonight.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias tokyomoonight.Highlights table<string,tokyomoonight.Highlight|string>

---@alias tokyomoonight.HighlightsFn fun(colors: ColorScheme, opts:tokyomoonight.Config):tokyomoonight.Highlights

---@class tokyomoonight.Cache
---@field groups tokyomoonight.Highlights
---@field inputs table
