return {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 1
      vim.g.gitblame_virtual_text_column = 100
      vim.g.gitblame_message_template = "<author> • <date> • <sha> • <summary>"
      vim.g.gitblame_highlight_group = "StatusLine"
      vim.g.gitblame_set_extmark_options = {
        hl_mode = "combine",
      }
    end,
}