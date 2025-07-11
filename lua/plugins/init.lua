return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
    ft = "rust",
    config = function ()
      local mason_registry = require('mason-registry')
      local codelldb = mason_registry.get_package("codelldb")
--      local extension_path = codelldb:get_install_path() .. "/extension/"
      local extension_path = vim.fn.expand("$MASON/packages/codelldb")
      local codelldb_path = extension_path .. "adapter/codelldb"
      local liblldb_path = extension_path.. "lldb/lib/liblldb.dylib"
      local cfg = require('rustaceanvim.config')

      vim.g.rustaceanvim = {
        dap = {
          adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
        },
      }
    end
  },
  {
    'mfussenegger/nvim-dap',
    config = function()
			local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
		end,
  },

  {
    'rcarriga/nvim-dap-ui',
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function()
			require("dapui").setup()
		end,
  },
  {
      "rootiest/nvim-updater.nvim",
      version = "*",
      config = function()
          require("nvim_updater").setup({
              check_for_updates = true,
              notify_updates = true,
          })
      end,
      opts = {}
  },
--  {
--     'chistoomey/vim-tmux-navigator',
--  }
--  {
--  	"nvim-treesitter/nvim-treesitter",
--   	opts = {
--   		ensure_installed = {
--   			"vim", "lua", "vimdoc",
--        "html", "css"
--   		},
--    },
--  },

--  {
--    'nvim-telescope/telescope.nvim', tag = '0.1.8',
--    dependencies = { 'nvim-lua/plenary.nvim'}
--  },

}
