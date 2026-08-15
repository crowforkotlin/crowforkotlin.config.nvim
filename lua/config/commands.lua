local function lsp_log_path()
  return vim.lsp.log.get_filename()
end

vim.api.nvim_create_user_command("LspLog", function()
  vim.cmd.tabnew(vim.fn.fnameescape(lsp_log_path()))
end, { desc = "Open the Neovim LSP log" })

vim.api.nvim_create_user_command("LspLogClean", function()
  local path = lsp_log_path()
  local file, err = io.open(path, "w")

  if not file then
    vim.notify(string.format("Could not clear LSP log: %s", err), vim.log.levels.ERROR)
    return
  end

  file:close()
  vim.notify("Cleared LSP log: " .. path)
end, { desc = "Clear the Neovim LSP log" })
