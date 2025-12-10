return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = function()
      local opts = {
        default_format_opts = {
          lsp_format = "fallback",
        },
        format_on_save = {
          timeout_ms = 500,
        },
        formatters_by_ft = {
          lua = { "stylua" },
          fish = { "fish_indent" },
          sh = { "shfmt" },
          rust = { "rustfmt" },
          python = { "isort", "black" },
          go = { "goimports", "goimports-reviser", "gofumpt", "golines" },
          c = { "clang-format" },
        },
      }
      return opts
    end,
    init = function()
      -- If you want the formatexpr, here is the place to set it
      vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    end,
  },
  -- Lazygit.
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
  -- Decent cmd-line.
  {
    "VonHeikemen/fine-cmdline.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    cmd = {
      "FineCmdLine",
    },
    keys = {
      { ":", "<cmd>FineCmdline<cr>", nil },
    },
  },
  -- Some useful go stuff.
  {
    "fatih/vim-go",
    lazy = false,
  },
  {
    "simrat39/rust-tools.nvim",
    lazy = false,
  },
  --
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
  },
}
