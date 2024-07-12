return {
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
  },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "nvim-telescope/telescope-github.nvim" },
  { "nvim-telescope/telescope-frecency.nvim", dependences = { "tami5/sqlite.lua" } },
  { "nvim-lua/plenary.nvim" },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        detection_methods = { "pattern", "lsp" },
        patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
      }
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      local telescope = require "telescope"
      telescope.setup {
        defaults = {
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
          },
          prompt_prefix = "> ",
          selection_caret = "> ",
          path_display = { "truncate" },
          file_ignore_patterns = { "node_modules" },
          layout_config = {
            prompt_position = "top",
            preview_cutoff = 120,
            horizontal = { mirror = false },
            vertical = { mirror = false },
          },
          sorting_strategy = "ascending",
          mappings = {
            i = {
              ["<C-n>"] = require("telescope.actions").move_selection_next,
              ["<C-p>"] = require("telescope.actions").move_selection_previous,
            },
            n = {
              ["<C-n>"] = require("telescope.actions").move_selection_next,
              ["<C-p>"] = require("telescope.actions").move_selection_previous,
            },
          },
        },
        pickers = {
          find_files = {
            theme = "dropdown",
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
          file_browser = {
            theme = "ivy",
            hijack_netrw = true,
          },
          frecency = {
            db_root = vim.fn.stdpath "data" .. "/databases",
            show_scores = false,
            show_unindexed = true,
            ignore_patterns = { "*.git/*", "*/tmp/*" },
          },
        },
      }

      -- 加载 telescope 扩展
      telescope.load_extension "fzf"
      telescope.load_extension "file_browser"
      telescope.load_extension "gh"
      telescope.load_extension "frecency"
      telescope.load_extension "projects"

      -- 配置快捷键
      local opts = { noremap = true, silent = true }
      vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
      vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
      vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
      vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
      vim.api.nvim_set_keymap("n", "<leader>fr", "<cmd>Telescope frecency<CR>", opts)
      vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope file_browser<CR>", opts)
      vim.api.nvim_set_keymap("n", "<leader>fp", "<cmd>Telescope projects<CR>", opts)
    end,
  },
}
