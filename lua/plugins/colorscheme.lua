return {
  -- Transparencia global
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
        enable = true,
        extra_groups = {
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLineNr",
          "EndOfBuffer",
        },
        exclude = {},
      })
      vim.cmd("TransparentEnable")
    end,
  },

  -- Kanagawa
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    opts = {
      transparent = true,
      theme = "dragon",
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        }
      end,
    },
  },

  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        mini = { enabled = true },
      },
    },
  },

  -- Everforest
  {
    "neanias/everforest-nvim",
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "hard",
        transparent_background_level = 1,
        italics = true,
        diagnostic_text_highlight = true,
        diagnostic_virtual_text = "coloured",
        colours_override = function(palette)
          palette.bg0 = "#1A1A22"
        end,
      })
    end,
  },

  -- Oxocarbon
  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
  },

  -- Rose-pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    opts = {
      variant = "moon",
      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
    },
  },

  -- Doom One
  {
    "NTBBloodbath/doom-one.nvim",
    priority = 1000,
  },

  -- SET DEFAULT THEME HERE
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin", -- cámbialo a: "catppuccin", "everforest", "oxocarbon", "rose-pine", "doom-one"
    },
  },
}
