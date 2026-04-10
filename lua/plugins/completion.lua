return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "none", -- 禁用预设，完全自定义或在下面重写

        -- 1. 将 Tab 设置为确认补全
        -- 如果你希望 Tab 只有在弹窗显示时才确认，否则保持原意，就这样写：
        ["<Tab>"] = { "select_and_accept", "fallback" },

        -- 2. 设置 Alt+j 和 Alt+k 切换选项
        ["<A-j>"] = { "select_next", "fallback" },
        ["<A-k>"] = { "select_prev", "fallback" },

        -- 习惯性保留：如果需要回车也能确认，可以加上
        ["<CR>"] = { "accept", "fallback" },
        -- 习惯性保留：Esc 关闭弹窗
        ["<Esc>"] = { "hide", "fallback" },
      },
    },
  },
}
