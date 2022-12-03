
local colorscheme = "tokyonight-day"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found")
  vim.cmd[[colorscheme elflord]]
end
