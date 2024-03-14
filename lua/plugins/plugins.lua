return {
  -- Gruvbox Colorscheme
  { "sainnhe/gruvbox-material" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },

  -- Flowtime
  {
    "donbignose/flowtime.nvim",
    config = function()
      require("flowtime")
    end,
  },

  -- Markdown Preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- Oil
  {
    "stevearc/oil.nvim",
    vim.keymap.set("n", "<leader>n", "<cmd>Oil<cr>"),
  },

  -- Grapple
  {
    "cbochs/grapple.nvim",
    vim.keymap.set("n", "<leader>m", "<cmd>Grapple toggle<cr>"),
    vim.keymap.set("n", "<leader>M", "<cmd>Grapple open_tags<cr>"),
  },

  -- Formatting config
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["javascript"] = { "prettier" },
        ["javascriptreact"] = { "prettier" },
        ["typescript"] = { "prettier" },
        ["typescriptreact"] = { "prettier" },
        ["vue"] = { "prettier" },
        ["css"] = { "prettier" },
        ["astro"] = { "prettier-plugin-astro" },
        ["scss"] = { "prettier" },
        ["less"] = { "prettier" },
        ["html"] = { "prettier" },
        ["json"] = { "prettier" },
        ["jsonc"] = { "prettier" },
        ["yaml"] = { "prettier" },
        ["markdown"] = { "prettier" },
        ["markdown.mdx"] = { "prettier" },
        ["graphql"] = { "prettier" },
        ["handlebars"] = { "prettier" },
      },
    },
  },

  {
    "jbyuki/nabla.nvim",
  },
}
