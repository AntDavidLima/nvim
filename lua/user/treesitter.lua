local status_ok_treesitter = pcall(require, "nvim-treesitter")
if not status_ok_treesitter then
  return
end

local status_ok_configs, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not status_ok_configs then
  return
end

treesitter_configs.setup {
  -- ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python" }, -- put the language you want in this array
  ensure_installed = "all", -- one of "all" or a list of languages
  ignore_install = { "" }, -- List of parsers to ignore installing
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)

  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "css" }, -- list of language that will be disabled
  },
  autopairs = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  indent = { enable = true, disable = { "css" } },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
