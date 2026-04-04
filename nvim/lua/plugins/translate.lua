-- sudo aptitude install espeak-ng
-- espeak-ng
local function speak()
  local word = vim.fn.expand("<cword>")
  if word == "" then
    return
  end
  local cmd = string.format('espeak-ng -v en+f3 -s 100 "%s" &', word:gsub('"', '\\"'))
  vim.fn.system(cmd)
end

vim.keymap.set("n", "<leader>ts", speak, { desc = "speak" })

return {
  {
    "voldikss/vim-translator",
    keys = {
      -- { "<leader>t", ":TranslateW<CR>", desc = "translate" },
      { "<leader>t", ":TranslateW<CR>", desc = "translate" },
    },
    config = function()
      vim.g.translator_default_engines = { "bing", "haici" }
    end,
  },
}
