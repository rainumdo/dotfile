return {
  --
  {
    "voldikss/vim-translator",
    keys = {
      { "<leader>t", ":TranslateW<CR>", desc = "translate" },
    },
    config = function()
      vim.g.translator_default_engines = { "bing", "haici" }
    end,
  },
}
