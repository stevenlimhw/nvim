require("lazy").setup({
  "tpope/vim-commentary",
  "mattn/emmet-vim",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "ellisonleao/gruvbox.nvim",
  "dracula/vim",
  "nvim-lualine/lualine.nvim",
  "nvim-treesitter/nvim-treesitter",
  "vim-test/vim-test",
  "lewis6991/gitsigns.nvim",
  "preservim/vimux",
  "christoomey/vim-tmux-navigator",
  "tpope/vim-fugitive",
  "tpope/vim-surround",
  "stevearc/oil.nvim",
  -- completion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "github/copilot.vim",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "jose-elias-alvarez/null-ls.nvim",
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    config = function()
      -- Setup orgmode
      require('orgmode').setup({
        org_agenda_files = '~/sync/org/**/*',
        org_default_notes_file = '~/sync/org/main.org',
        org_capture_templates = {
          j = {
            description = 'Journal',
            template = '\n* %<%Y-%m-%d> %<%A> %U\n\n%?',
            target = '~/sync/org/journal/%<%Y-%m>.org'
          },
        },
      })
    end,
  },
  {
    "lervag/vimtex",
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      vim.cmd('syntax enable')
      vim.api.nvim_set_keymap('n', '\\ll', ':VimtexCompile<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '\\lv', ':VimtexView<CR>', { noremap = true, silent = true })
    end
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000
  },
  -- set priority to 1000 to use gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 998,
    config = true,
    opts = ...
  },
  -- set priority to 1000 to use catpuccin 
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 999
  },
  {
    "vinnymeller/swagger-preview.nvim",
    run = "npm install -g swagger-ui-watcher",
  },
  --{
  --  "iamcco/markdown-preview.nvim",
  --  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  --  build = "cd app && yarn install",
  --  init = function()
  --    vim.g.mkdp_filetypes = { "markdown" }
  --  end,
  --  ft = { "markdown" },
  --},
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    config = function()
      vim.keymap.set("n", "<Leader>mp", "<Plug>MarkdownPreview", { desc = "Markdown Preview" })
    end,
  },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },
})
