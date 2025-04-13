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
    "lervag/vimtex",
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      -- This enables Vim's and Neovim's syntax-related features.
      -- Without this, some VimTeX features will not work
      vim.cmd('syntax enable')
      -- VimTeX Viewer options
      vim.g.vimtex_view_method = 'skim'
      vim.g.vimtex_view_skim_sync = 1
      -- Or with a generic interface:
      vim.g.vimtex_view_general_viewer = 'skim'  -- Replace 'okular' with your preferred viewer
      vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
      -- VimTeX Compiler backend
      vim.g.vimtex_compiler_method = 'latexmk'  -- Use 'latexmk' or another compiler if needed
      -- Set up VimTeX compile command mapping
      vim.api.nvim_set_keymap('n', '\\ll', ':VimtexCompile<CR>', { noremap = true, silent = true })
      -- View the PDF with \lv
      vim.api.nvim_set_keymap('n', '\\lv', ':VimtexView<CR>', { noremap = true, silent = true })
      -- Local leader key for VimTeX mappings (default is ',')
      vim.g.maplocalleader = ","
      vim.g.vimtex_rooter_enabled = 1
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
  {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
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
