return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "markdown",
          "markdown_inline",
          "bash",
          "kdl",
          "yaml",
          "dosini",
          "json",
          "toml",
          "xml",
          "c",
          "lua",
          "vim",
          "vimdoc",
          "query",
        })
      end
    end,
    init = function()
      local register = vim.treesitter.language.register
      if register then
        register("bash", "shell")
        register("kdl", "dms")
        register("dosini", "conf")
      end
    end,
  },
}
