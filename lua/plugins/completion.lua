return {
  {
    "saghen/blink.cmp",
    opts = {
      -- 启用 LSP 参数签名提示
      signature = { enabled = true },

      keymap = {
        preset = "none", -- 禁用预设，完全自定义或在下面重写

        -- 1. 将 Tab 设置为确认补全
        -- 如果你希望 Tab 只有在弹窗显示时才确认，否则保持原意，就这样写：
        ["<Tab>"] = { "select_and_accept", "fallback" },

        -- 手动重新打开补全菜单，保留光标当前已经输入的内容
        ["<A-V>"] = { "show" },

        -- 手动显示当前函数/方法的参数信息
        ["<C-P>"] = { "show_signature", "fallback" },

        -- 2. tmux 占用 Alt+j/k，使用 Alt+Shift+j/k 切换选项
        ["<A-J>"] = { "select_next", "fallback" },
        ["<A-K>"] = { "select_prev", "fallback" },

        -- 补全菜单打开时用方向键切换候选项，菜单关闭时保持默认行为
        ["<Down>"] = { "select_next", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },

        -- 习惯性保留：如果需要回车也能确认，可以加上
        ["<CR>"] = { "accept", "fallback" },
        -- 习惯性保留：Esc 关闭弹窗
        ["<Esc>"] = { "hide", "fallback" },
      },
    },
  },
  {
    "folke/sidekick.nvim",
    opts = {
      nes = { enabled = false },
    },
  },
}
