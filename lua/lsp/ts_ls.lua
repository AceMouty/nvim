local typescirpt_settings = {
  cmd = {"typescript-language-server", "--stdio"},
  filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
  root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
}


return typescirpt_settings
