local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
    'nyoom-engineering/oxocarbon.nvim',
    'jiangmiao/auto-pairs',
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {{'kyazdani42/nvim-web-devicons'}},
        config = function()
            require 'plugin_configs.lualine'
        end
    },
    {
        'kyazdani42/nvim-tree.lua',
        config = function()
            require 'nvim-tree'.setup{}
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require 'plugin_configs.treesitter'
        end
    },
    'alvarosevilla95/luatab.nvim',
    'haya14busa/incsearch.vim',
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {{'nvim-lua/plenary.nvim'}}
    },
    {
        'goolord/alpha-nvim',
        config = function()
            require 'plugin_configs.alphavim'
        end
    },
    {
        'neoclide/coc.nvim',
        build = 'yarn install --frozen-lockfile',
        config = function()
            require 'plugin_configs.coc'
        end
    }
}

local opts = {}

require('lazy').setup(plugins, opts)
