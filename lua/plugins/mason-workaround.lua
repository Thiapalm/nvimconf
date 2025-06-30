return {
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
  { "jay-babu/mason-nvim-dap.nvim",
     event = "VeryLazy",
     dependencies = {
         "mason-org/mason.nvim",
     },
     opts = {
         handlers = {}
     },
  },
}
