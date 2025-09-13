return {
  { "ellisonleao/gruvbox.nvim" },
    {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Ensures it loads before other plugins that might depend on it
    config = function()
      require("catppuccin").setup({
        auto_integrations = true,
        -- Add other Catppuccin options here if desired
        -- For example, to set a specific flavor:
        -- flavour = "macchiato",
      })
    end,
    },
}
