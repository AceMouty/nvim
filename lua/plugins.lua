local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/savq/paq-nvim " .. install_path)
  execute "packadd paq-nvim"
end

local paq = require("paq-nvim").paq

-- Package Manager
paq "savq/paq-nvim"
-- Treesitter
paq {"nvim-treesitter/nvim-treesitter", run = "<cmd>:TSUpdate"}
-- Telescope
paq "numtostr/FTerm.nvim"
paq "nvim-lua/popup.nvim"
paq "nvim-lua/plenary.nvim"
paq "nvim-telescope/telescope.nvim" --uses popup & plenary
paq "nvim-telescope/telescope-project.nvim"
-- LSP
paq "neovim/nvim-lspconfig"
paq "kabouzeid/nvim-lspinstall"
paq "glepnir/lspsaga.nvim"
paq "onsails/lspkind-nvim"
-- Color Schemes
paq "ishan9299/modus-theme-vim"
paq "franbach/miramare"
paq "folke/tokyonight.nvim"
-- File Manager
paq "tamago324/lir.nvim"
-- Status / Tab Line
paq "hoob3rt/lualine.nvim"
paq "romgrk/barbar.nvim"
-- Icons
paq "kyazdani42/nvim-web-devicons"
-- Completeion
paq "hrsh7th/nvim-compe"
paq "hrsh7th/vim-vsnip"
paq "rafamadriz/friendly-snippets"
-- Key Helper (Which Key)
paq "folke/which-key.nvim"
-- Dev quality of life
paq "jiangmiao/auto-pairs"
paq "terrortylor/nvim-comment"
paq "mhartington/formatter.nvim"
