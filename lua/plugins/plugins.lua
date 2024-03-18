return {
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
    vim.keymap.set("n", "<leader>n", "<cmd>Oil<cr>", { desc = "Open Oil" }),
  },

  -- Grapple
  {
    "cbochs/grapple.nvim",
    vim.keymap.set("n", "<leader>m", "<cmd>Grapple toggle<cr>", { desc = "Toggle Grapple" }),
    vim.keymap.set("n", "<leader>M", "<cmd>Grapple open_tags<cr>", { desc = "Open Tags" }),
  },

  {
    "jbyuki/nabla.nvim",
    vim.keymap.set("n", "<leader>p", "<cmd>:lua require('nabla').popup()<cr>", { desc = "Nabla Preview" }),
    ft = { "markdown", "txt" },
  },
}
