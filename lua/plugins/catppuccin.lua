return { "catppuccin/nvim", name = "catppuccin", priority = 1000, config=function() 

  require("catppuccin").setup({
    transparent_background =true,
    custom_highlights = {
      --Normal = { bg = "#000000", fg = "#F5F5F5" },
      Normal = { bg = "None", fg = "#F5F5F5" },
      Constant = { fg = "#fab387" },  -- Constants and enums
      --Comment = { fg = "#55a630" },
      Keyword = { fg = "#FD6A02" },  -- Keywords
      String = { fg = "#a98467" },  -- String literals
      Function = { fg = "#ffe97f" },  -- Function names
      Conditional = { fg = "#fb6f92"},
      Identifier = { fg = "#ef476f" }, 
      Type = { fg = "#06d6a0" },  -- int, char, etc.
      PreProc = { fg = "#ef476f" },  -- Preprocessor statements

    },

  })

  vim.cmd.colorscheme "catppuccin-mocha"
end
}
