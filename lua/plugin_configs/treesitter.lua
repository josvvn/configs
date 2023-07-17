local status_ok, configs = pcall(require, 'nvim-treesitter.configs')

if not status_ok then
  return
end

configs.setup{
  sync_install = false,
  ignore_instgall = { '' },
  highlight = {
    enable = true,
    disable = { '' },
    additional_vim_regex_highlighting = true
  }
}

require('nvim-treesitter.install').compilers = { "clang" }

