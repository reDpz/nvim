return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            'theHamsta/nvim-dap-virtual-text'
        },
        config = function()
            require("nvim-dap-virtual-text").setup()
        end
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = {
            'williamboman/mason.nvim',
            'mfussenegger/nvim-dap',
        },
        opts = {
            handlers = {},
            ensure_installed = {
                "codelldb"
            }
        },
        event = "VeryLazy",
        config = function()
            require("mason-nvim-dap").setup()
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end
    },
}
