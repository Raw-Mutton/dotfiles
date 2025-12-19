--- Apparently this is a new way to define LSP languages
--- Since April 2025?

--- I don't understand why the '.toml' doesn's show up in :checkhelath vim.lsp?????
--- Tried about a billion things but it's just not showing up

return {
  cmd = { 'taplo', 'lsp', 'stdio' },
  filetypes = { 'toml' },
  root_markers = { '*.toml', '.git' },
}
