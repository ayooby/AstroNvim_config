return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  -- customize alpha options
  -- {
  --   "goolord/alpha-nvim",
  --   opts = function(_, opts)
  --     -- opts.section.header.opts = { hl = { { "GreenHLGroup", 0, 12 }, { "BlueHLGroup", 13, 20 } } }
  --     -- customize the dashboard header
  --     opts.section.header.val = {
  --     }
  --     return opts
  --   end,
  -- },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },

  -- CUSTOM PLUGINGS
  { "github/copilot.vim" },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup {
  --       panel = {
  --         auto_refresh = true,
  --       },
  --       suggestion = {
  --         auto_trigger = true,
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   config = function() require("copilot_cmp").setup() end,
  -- },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function() require("nvim-surround").setup {} end,
  },
  {
    "wakatime/vim-wakatime",
    lazy = false,
    config = function() end,
  },
  { "machakann/vim-swap" },
}
