return {
  -- Rose Pine Colorscheme
  { "morhetz/gruvbox" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
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

  { "norcalli/nvim-colorizer.lua" },

  {
    -- coc-astro / coc-prettier
    "neoclide/coc.nvim",
    branch = "release",
  },
}
