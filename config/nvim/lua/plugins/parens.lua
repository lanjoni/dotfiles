-- [nfnl] fnl/plugins/parens.fnl
local function _1_()
  local surround = require("nvim-surround")
  return surround.setup()
end
local function _2_()
  local autopairs = require("nvim-autopairs")
  return autopairs.setup({enable_check_bracket_line = false})
end
local function _3_()
  local paredit = require("nvim-paredit")
  local function _4_()
    return paredit.cursor.place_cursor(paredit.wrap.wrap_enclosing_form_under_cursor("(", ")"), {mode = "insert", placement = "inner_end"})
  end
  local function _5_()
    return paredit.cursor.place_cursor(paredit.wrap.wrap_element_under_cursor("(", ")"), {mode = "insert", placement = "inner_end"})
  end
  local function _6_()
    return paredit.cursor.place_cursor(paredit.wrap.wrap_enclosing_form_under_cursor("( ", ")"), {mode = "insert", placement = "inner_start"})
  end
  local function _7_()
    return paredit.cursor.place_cursor(paredit.wrap.wrap_element_under_cursor("( ", ")"), {mode = "insert", placement = "inner_start"})
  end
  return paredit.setup({keys = {["<localleader>I"] = {_4_, "Wrap form insert tail"}, ["<localleader>W"] = {_5_, "Wrap element insert tail"}, ["<localleader>i"] = {_6_, "Wrap form insert head"}, ["<localleader>w"] = {_7_, "Wrap element insert head"}}})
end
return {{"kylechui/nvim-surround", event = "VeryLazy", config = _1_}, {"windwp/nvim-autopairs", event = "InsertEnter", opts = {}, config = _2_}, {"julienvincent/nvim-paredit", lazy = true, ft = {"clojure", "fennel"}, config = _3_}}
