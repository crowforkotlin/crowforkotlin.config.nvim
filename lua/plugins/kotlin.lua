return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kotlin_lsp = {
          cmd = { "kotlin-lsp" },
          filetypes = { "kotlin" },
          root_markers = {
            "settings.gradle.kts",
            "settings.gradle",
            "build.gradle.kts",
            "build.gradle",
            "pom.xml",
            ".git",
          },
          mason = false,
        },
      },
    },
  },
}
