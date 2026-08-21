local function has_dms_file(path)
  return vim.fn.filereadable(vim.fn.stdpath("config") .. "/" .. path) == 1
end

return {
  {
    "AvengeMedia/base46",
    lazy = true,
    opts = {
      transparency = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        vim.cmd.colorscheme(has_dms_file("colors/dms.lua") and "dms" or "habamax")
      end,
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options.theme = has_dms_file("lua/lualine/themes/dms.lua") and "dms" or "auto"
    end,
  },
}
