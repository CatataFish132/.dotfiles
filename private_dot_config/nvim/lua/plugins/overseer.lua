return {
  'stevearc/overseer.nvim',
  opts = {},
  config = function()
    require('overseer').setup {}
    -- Put this in your Neovim config (e.g. init.lua or plugin/task.lua)
    require("overseer").register_template({
    name = "Run Python file",
    builder = function()
      local file = vim.fn.expand("%")
      return {
        cmd = { "python3" },
        args = { file },
        name = "Run Python file",
        components = {
          "default",
          "unique",
          "on_output_quickfix",
          "on_exit_set_status",
          "on_complete_notify",
        },
      }
    end,
    condition = {
      filetype = { "python" },
    },
  })

  end,
}
