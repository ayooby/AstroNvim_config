-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.color.twilight-nvim" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme.bamboo-nvim" },
  { import = "astrocommunity.colorscheme.oxocarbon-nvim" },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  -- Pack install
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.ps1" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.markdown" },

  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.scrolling.mini-animate" },

  { import = "astrocommunity.lsp.ts-error-translator-nvim" },
  -- { import = "astrocommunity.lsp.garbage-day-nvim" },
  -- snippet
  -- { import = "astrocommunity.snippet.nvim-snippets" },
}
