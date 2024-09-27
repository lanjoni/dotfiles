-- [nfnl] Compiled from fnl/plugins/parens.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local surround = require("nvim-surround")
  return surround.setup()
end
local function _3_()
  local autopairs = require("nvim-autopairs")
  return autopairs.setup({enable_check_bracket_line = false})
end
local function _4_()
  local paredit = require("nvim-paredit")
  local function _5_()
    return paredit.cursor.place_cursor(paredit.wrap.wrap_enclosing_form_under_cursor("(", ")"), {mode = "insert", placement = "inner_end"})
  end
  local function _6_()
    return paredit.cursor.place_cursor(paredit.wrap.wrap_element_under_cursor("(", ")"), {mode = "insert", placement = "inner_end"})
  end
  local function _7_()
    return paredit.cursor.place_cursor(paredit.wrap.wrap_enclosing_form_under_cursor("( ", ")"), {mode = "insert", placement = "inner_start"})
  end
  local function _8_()
    return paredit.cursor.place_cursor(paredit.wrap.wrap_element_under_cursor("( ", ")"), {mode = "insert", placement = "inner_start"})
  end
  return paredit.setup({cursor_behaviour = "auto", filetypes = {"clojure"}, indent = {indentor = require("nvim-paredit.indentation.native").indentor, enabled = false}, keys = {["("] = {paredit.api.move_to_parent_form_start, "Jump to parent form's head", mode = {"n", "x", "v"}, repeatable = false}, [")"] = {paredit.api.move_to_parent_form_end, "Jump to parent form's tail", mode = {"n", "x", "v"}, repeatable = false}, ["<("] = {paredit.api.slurp_backwards, "Slurp backwards"}, ["<)"] = {paredit.api.barf_forwards, "Barf forwards"}, ["<e"] = {paredit.api.drag_element_backwards, "Drag element left"}, ["<f"] = {paredit.api.drag_form_backwards, "Drag form left"}, ["<localleader>@"] = {paredit.unwrap.unwrap_form_under_cursor, "Splice sexp"}, ["<localleader>I"] = {_5_, "Wrap form insert tail"}, ["<localleader>O"] = {paredit.api.raise_element, "Raise element"}, ["<localleader>W"] = {_6_, "Wrap element insert tail"}, ["<localleader>i"] = {_7_, "Wrap form insert head"}, ["<localleader>o"] = {paredit.api.raise_form, "Raise form"}, ["<localleader>w"] = {_8_, "Wrap element insert head"}, [">("] = {paredit.api.barf_backwards, "Barf backwards"}, [">)"] = {paredit.api.slurp_forwards, "Slurp forwards"}, [">e"] = {paredit.api.drag_element_forwards, "Drag element right"}, [">f"] = {paredit.api.drag_form_forwards, "Drag form right"}, B = {paredit.api.move_to_prev_element_head, "Jump to previous element head", mode = {"n", "x", "o", "v"}, repeatable = false}, E = {paredit.api.move_to_next_element_tail, "Jump to next element tail", mode = {"n", "x", "o", "v"}, repeatable = false}, W = {paredit.api.move_to_next_element_head, "Jump to next element head", mode = {"n", "x", "o", "v"}, repeatable = false}, aF = {paredit.api.select_around_top_level_form, "Around top level form", mode = {"o", "v"}, repeatable = false}, ae = {paredit.api.select_element, "Around element", mode = {"o", "v"}, repeatable = false}, af = {paredit.api.select_around_form, "Around form", mode = {"o", "v"}, repeatable = false}, gE = {paredit.api.move_to_prev_element_tail, "Jump to previous element tail", mode = {"n", "x", "o", "v"}, repeatable = false}, iF = {paredit.api.select_in_top_level_form, "In top level form", mode = {"o", "v"}, repeatable = false}, ie = {paredit.api.select_element, "Element", mode = {"o", "v"}, repeatable = false}, ["if"] = {paredit.api.select_in_form, "In form", mode = {"o", "v"}, repeatable = false}}, use_default_keys = true})
end
local function _9_()
  local paredit_fnl = require("nvim-paredit-fennel")
  return paredit_fnl.setup()
end
return {{"gpanders/nvim-parinfer", lazy = true}, {"kylechui/nvim-surround", event = "VeryLazy", config = _2_}, {"windwp/nvim-autopairs", event = "InsertEnter", opts = {}, config = _3_}, {"julienvincent/nvim-paredit", lazy = true, ft = {"clojure", "fennel"}, config = _4_}, {"julienvincent/nvim-paredit-fennel", dependencies = {"julienvincent/nvim-paredit"}, lazy = true, ft = {"fennel"}, config = _9_}}
