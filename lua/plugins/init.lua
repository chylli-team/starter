return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --     require "configs.lspconfig"
  --   end,
  -- },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },
  {
    'smoka7/hop.nvim',
    opts = {
        multi_window = true,
        keys = 'etovxqpdygfblzhckisuran',
        uppercase_labels = true
    },
    keys = {
      {
         "<leader>fj",
         function()
           require("hop").hint_words()
         end,
         mode = {"n", "x", "o"},
      },
    },
  },

--  {
--    "github/copilot.vim",
--    lazy = false,
--    config = function()  -- Mapping tab is already used by NvChad
--      vim.g.copilot_no_tab_map = true;
--      vim.g.copilot_assume_mapped = true;
--      vim.g.copilot_tab_fallback = "";
--      -- The mapping is set to other key, see custom/lua/mappings
--      -- or run <leader>ch to see copilot mapping section
--    end
--},

}
