return {
  {
    "rcarriga/nvim-dap-ui",
    opts = function()
      return {
        library = { plugins = { "nvim-dap-ui" }, types = true },
      }
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, opts)
      local dap = require("dap")
      ---------------- Config for go
      dap.adapters.delve = {
        type = "server",
        port = "${port}",
        executable = {
          command = "dlv",
          args = { "dap", "-l", "127.0.0.1:${port}" },
        },
      }
      -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
      dap.configurations.go = {
        {
          type = "delve",
          name = "Debug",
          request = "launch",
          program = "${file}",
        },
        {
          type = "delve",
          name = "Debug test", -- configuration for debugging test files
          request = "launch",
          mode = "test",
          program = "${file}",
        },
        -- works with go.mod packages and sub packages
        {
          type = "delve",
          name = "Debug test (go.mod)",
          request = "launch",
          mode = "test",
          program = "./${relativeFileDirname}",
        },
      }

      --------------- Config for Node
      dap.adapters["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "node",
          -- 💀 Make sure to update this path to point to your installation
          args = {
            "/Users/idev/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
            "${port}",
          },
        },
      }

      dap.configurations.typescript = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
      }
    end,
  },
}
