-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.color.twilight-nvim" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme.bamboo-nvim" },
  { import = "astrocommunity.colorscheme.oxocarbon-nvim" },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- Pack install
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.ps1" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.fish" },
  -- snippet
  -- { import = "astrocommunity.snippet.nvim-snippets" },
}
