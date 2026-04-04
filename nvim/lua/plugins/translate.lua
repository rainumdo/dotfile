-- sudo aptitude install espeak
local function my_translate()
  -- translate
  local ok, _ = pcall(vim.cmd, "TranslateW")
  if not ok then
    vim.notify("翻译插件未加载", vim.log.levels.WARN)
  end
  -- espeak
  local word = vim.fn.expand("<cword>")
  if word == "" then
    return
  end
  local cmd = string.format('espeak -v female3 -p 99 -s 125 "%s " &', word:gsub('"', '\\"'))
  vim.fn.system(cmd)
end

vim.keymap.set("n", "<leader>t", my_translate)

return {
  {
    "voldikss/vim-translator",
    keys = {
      -- { "<leader>t", ":TranslateW<CR>", desc = "translate" },
    },
    event = "VeryLazy",
    config = function()
      vim.g.translator_default_engines = { "bing", "haici" }
    end,
  },
}
