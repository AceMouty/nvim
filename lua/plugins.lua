local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/savq/paq-nvim " .. install_path)
  execute "packadd paq-nvim"
end

local paq = require("paq-nvim").paq

paq {"nvim-treesitter/nvim-treesitter", run = "<cmd>:TSUpdate"}

paq "savq/paq-nvim"
paq "ishan9299/modus-theme-vim"
paq "franbach/miramare"
paq "tamago324/lir.nvim"
paq "numtostr/FTerm.nvim"
paq "nvim-lua/popup.nvim"
paq "nvim-lua/plenary.nvim"
paq "nvim-telescope/telescope.nvim" --uses popup & plenary
paq "nvim-telescope/telescope-project.nvim"

paq "hoob3rt/lualine.nvim"
paq "kyazdani42/nvim-web-devicons"

paq "hrsh7th/nvim-compe"
paq "hrsh7th/vim-vsnip"
paq "rafamadriz/friendly-snippets"

paq "neovim/nvim-lspconfig"
paq "kabouzeid/nvim-lspinstall"
paq "glepnir/lspsaga.nvim"
paq "onsails/lspkind-nvim"

paq "Vhyrro/neorg"
paq "jiangmiao/auto-pairs"
paq "terrortylor/nvim-comment"

paq "romgrk/barbar.nvim"

paq "folke/which-key.nvim"

paq "mhartington/formatter.nvim"
