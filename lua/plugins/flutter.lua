return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- 用于漂亮的设备选择界面
    },
    config = function()
      require("flutter-tools").setup({
        -- 核心配置
        fvm = true,
        debugger = {
          enabled = true,
          run_via_dap = true, -- 启用调试功能
        },
        lsp = {
          color_render = true, -- 在编辑器中直接显示颜色预览
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
          },
        },
      })
    end,
  },
}
