local Util = require("tokyomoonight.util")

local M = {}

---@type tokyomoonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    ["@lsp.type.boolean"]                      = "@boolean",
    ["@lsp.type.builtinType"]                  = "@type.builtin",
    ["@lsp.type.comment"]                      = "@comment",
    ["@lsp.type.decorator"]                    = "@attribute",
    ["@lsp.type.deriveHelper"]                 = "@attribute",
    ["@lsp.type.enum"]                         = "@type",
    ["@lsp.type.enum.defaultLibrary"]          = "@type",
    ["@lsp.type.enumMember"]                   = "@constant",
    ["@lsp.type.escapeSequence"]               = "@string.escape",
    ["@lsp.type.formatSpecifier"]              = "@markup.list",
    ["@lsp.type.generic"]                      = "@variable",
    ["@lsp.type.interface"]                    = { fg = c.purple2 },
    ["@lsp.type.keyword"]                      = "@keyword",
    ["@lsp.type.lifetime"]                     = "@keyword.storage",
    ["@lsp.type.namespace"]                    = "@module",
    ["@lsp.type.namespace.python"]             = "@variable",
    ["@lsp.type.number"]                       = "@number",
    ["@lsp.type.operator"]                     = "@operator",
    ["@lsp.type.parameter"]                    = "@variable.parameter",
    ["@lsp.type.property"]                     = "@property",
    ["@lsp.type.selfKeyword"]                  = "@keyword",
    ["@lsp.type.selfTypeKeyword"]              = "@keyword",
    ["@lsp.type.string"]                       = "@string",
    ["@lsp.type.typeAlias"]                    = "@type.definition",
    ["@lsp.type.unresolvedReference"]          = { undercurl = true, sp = c.error },
    ["@lsp.type.variable"]                     = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.class.defaultLibrary"]      = "@type.builtin",
    ["@lsp.typemod.enum.defaultLibrary"]       = "@type.builtin",
    ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
    ["@lsp.typemod.function.defaultLibrary"]   = "@function.builtin",
    ["@lsp.typemod.keyword.async"]             = "@keyword.coroutine",
    ["@lsp.typemod.keyword.injected"]          = "@keyword",
    ["@lsp.typemod.macro.defaultLibrary"]      = "@function.builtin",
    ["@lsp.typemod.method.defaultLibrary"]     = "@function.builtin",
    ["@lsp.typemod.operator.injected"]         = "@operator",
    ["@lsp.typemod.string.injected"]           = "@string",
    ["@lsp.typemod.struct.defaultLibrary"]     = "@type.builtin",
    -- ["@lsp.typemod.type.defaultLibrary"]       = { fg = Util.blend_bg(c.blue1, 0.8) },
    -- ["@lsp.typemod.typeAlias.defaultLibrary"]  = { fg = Util.blend_bg(c.blue1, 0.8) },
    ["@lsp.typemod.variable.callable"]         = "@function",
    ["@lsp.typemod.variable.defaultLibrary"]   = "@variable.builtin",
    ["@lsp.typemod.variable.injected"]         = "@variable",
    ["@lsp.typemod.variable.static"]           = "@constant",


    -- -- Rust Groups
    -- ["@type.qualifier.rust"] = { underline = true },
    ["@lsp.typemod.keyword.unsafe.rust"] = { fg = c.error }, -- rust unsafe
    -- ["@lsp.typemod.typealias.declaration.rust"] = { underline = true }, -- type alias lvalue
    ["@lsp.typemod.enummember.defaultlibrary.rust"] = { underdashed = true },
    ["@lsp.typemod.enum.defaultlibrary.rust"] = { underdashed = true },
    -- ["@lsp.type.variable.rust"] = { fg = c.white },
    ["@lsp.typemod.variable.constant.rust"] = "@constant",
    -- ["@lsp.type.property.rust"] = { underline = true },
    -- ["@lsp.type.parameter.rust"] = { underline = true },
    ["@lsp.typemod.variable.mutable.rust"] = { fg = c.blue3, underline = true },
    ["@lsp.typemod.method.mutable.rust"] = { fg = c.blue3, underline = true },
    -- ["@lsp.typemod.parameter.declaration.rust"] = { fg = c.pink },
    ["@lsp.mod.deprecated.rust"] = { strikethrough = true },
    -- ["@lsp.mod.async"] = { italic = true }
  }
end

return M
