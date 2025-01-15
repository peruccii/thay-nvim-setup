return {
  -- Configure LazyVim para carregar o esquema de cores
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night", -- Inicializa com TokyoNight
    },
  },

  -- Configurar o tema TokyoNight com o fundo preto ou transparente
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        style = "night", -- Estilo do tema
        transparent = false, -- Defina como 'true' para usar o fundo do terminal
        terminal_colors = true,
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          sidebars = "dark", 
          floats = "dark", 
        },
        on_colors = function(colors)
          colors.bg = "#000000" 
        end,
      })

      vim.cmd("colorscheme tokyonight-night")
      vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" }) 
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" }) 
    end,
  },

  -- Adicionar o tema Kanagawa
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require('kanagawa').setup({
        compile = false,             -- enable compiling the colorscheme
        undercurl = true,            -- enable undercurls
        commentStyle = { italic = false },
        functionStyle = {},
        keywordStyle = { italic = true},
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,         -- do not set background color
        dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
        terminalColors = true,       -- define vim.g.terminal_color_{0,17}
        colors = {                   -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = "wave",              -- Load "wave" theme when 'background' option is not set
        background = {               -- map the value of 'background' option to a theme
          dark = "dragon",           -- try "dragon" !
          light = "lotus"
        },
      })

      -- Carregar o tema Kanagawa
      vim.cmd("colorscheme kanagawa")
    end,
  },
}

