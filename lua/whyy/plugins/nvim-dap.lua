return {
  {
    "mfussenegger/nvim-dap",
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end,
    n = {
      ["<leader>db"] = {
        "<cmd> DapToggleBreakpoint <CR>",
        "Add breakpoint at line",
      },
      ["<leader>dus"] = {
        function()
          local widgets = require("dap.ui.widgets")
          local sidebar = widgets.sidebar(widgets.scopes)
          sidebar.open()
        end,
        "Open debuggin sidebar",
      },
    },
  },
}
