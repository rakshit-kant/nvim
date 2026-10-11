return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000,

    config = function()
      vim.cmd.colorscheme("oxocarbon")

      local kinds = {
        "Text",
        "Method",
        "Function",
        "Constructor",
        "Field",
        "Variable",
        "Class",
        "Interface",
        "Module",
        "Property",
        "Unit",
        "Value",
        "Enum",
        "Keyword",
        "Snippet",
        "Color",
        "File",
        "Reference",
        "Folder",
        "EnumMember",
        "Constant",
        "Struct",
        "Event",
        "Operator",
        "TypeParameter",
      }

      for _, kind in ipairs(kinds) do
        vim.api.nvim_set_hl(0, "BlinkCmpKind" .. kind, {
          bg = "NONE",
        })
      end
    end,
  },
}
