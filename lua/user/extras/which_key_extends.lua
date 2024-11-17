function ToggleRelativeNumber()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
  else
    vim.wo.relativenumber = true
  end
end

-- Toggle
lvim.builtin.which_key.mappings["t"] = {
  name = "Toggle",
  r = { ":lua ToggleRelativeNumber()<CR>", "Relative Number" },
  e = { "<cmd>NvimTreeToggle<CR>", "Explorer" }
}

-- Project
lvim.builtin.which_key.mappings["P"] = {
  name = "Project",
  p = { ":lua require('telescope').extensions.projects.projects()<CR>", "Projects" }
}
