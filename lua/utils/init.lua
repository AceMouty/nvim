local utils = { }

local scopes = {o = vim.o, b = vim.bo, v = vim.v, w = vim.wo, g = vim.g}

function utils.opt(scope, key, value)
    if scopes[scope] then
        scopes[scope][key] = value
    else
        vim.api.nvim_err_writeln(("%s is not a valid nvim scope"):format(scope))
    end
end

function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return utils
