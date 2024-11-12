[{1 :gpanders/nvim-parinfer
  :lazy true}
 
 {1 :kylechui/nvim-surround
  :event "VeryLazy"
  :config (fn []
            (let [surround (require :nvim-surround)]
              (surround.setup)))}

 {1 :windwp/nvim-autopairs
  :event "InsertEnter"
  :opts {}
  :config (fn []
            (let [autopairs (require :nvim-autopairs)]
              (autopairs.setup {:enable_check_bracket_line false})))}


 {1 :julienvincent/nvim-paredit
  :lazy true
  :ft [:clojure :fennel]
  :config (fn []
            (let [paredit (require :nvim-paredit)]
              (paredit.setup {:cursor_behaviour :auto
                              :indent {:enabled false
                                       :indentor (. (require :nvim-paredit.indentation.native)
                                                    :indentor)}
                              :keys {"(" {1 paredit.api.move_to_parent_form_start
                                          2 "Jump to parent form's head"
                                          :mode [:n :x :v]
                                          :repeatable false}

                                     ")" {1 paredit.api.move_to_parent_form_end
                                          2 "Jump to parent form's tail"
                                          :mode [:n :x :v]
                                          :repeatable false}

                                     "<(" [paredit.api.slurp_backwards "Slurp backwards"]

                                     "<)" [paredit.api.barf_forwards "Barf forwards"]

                                     :<e [paredit.api.drag_element_backwards
                                          "Drag element left"]

                                     :<f [paredit.api.drag_form_backwards "Drag form left"]

                                     "<localleader>@" [paredit.unwrap.unwrap_form_under_cursor
                                                       "Splice sexp"]

                                     :<localleader>I [(fn []
                                                        (paredit.cursor.place_cursor 
                                                          (paredit.wrap.wrap_enclosing_form_under_cursor "(" ")")
                                                          {:mode :insert
                                                           :placement :inner_end}))
                                                      "Wrap form insert tail"]

                                     :<localleader>O [paredit.api.raise_element
                                                      "Raise element"]

                                     :<localleader>W [(fn []
                                                        (paredit.cursor.place_cursor 
                                                          (paredit.wrap.wrap_element_under_cursor "(" ")")
                                                          {:mode :insert
                                                           :placement :inner_end}))
                                                      "Wrap element insert tail"]

                                     :<localleader>i [(fn []
                                                        (paredit.cursor.place_cursor 
                                                          (paredit.wrap.wrap_enclosing_form_under_cursor "( " ")")
                                                          {:mode :insert
                                                           :placement :inner_start}))
                                                      "Wrap form insert head"]

                                     :<localleader>o [paredit.api.raise_form "Raise form"]

                                     :<localleader>w [(fn []
                                                        (paredit.cursor.place_cursor 
                                                          (paredit.wrap.wrap_element_under_cursor "( " ")")
                                                          {:mode :insert
                                                           :placement :inner_start}))
                                                      "Wrap element insert head"]

                                     :<localleader>q [(fn []
                                                        (paredit.cursor.place_cursor 
                                                          (paredit.wrap.wrap_element_under_cursor "{ " "}")
                                                          {:mode :insert
                                                           :placement :inner_start}))
                                                      "Wrap element insert head"]

                                     :<localleader>k [(fn []
                                                        (paredit.cursor.place_cursor 
                                                          (paredit.wrap.wrap_element_under_cursor "[ " "]")
                                                          {:mode :insert
                                                           :placement :inner_start}))
                                                      "Wrap element insert head"]

                                     ">(" [paredit.api.barf_backwards "Barf backwards"]

                                     ">)" [paredit.api.slurp_forwards "Slurp forwards"]

                                     :>e [paredit.api.drag_element_forwards
                                          "Drag element right"]

                                     :>f [paredit.api.drag_form_forwards "Drag form right"]

                                     :B {1 paredit.api.move_to_prev_element_head
                                         2 "Jump to previous element head"
                                         :mode [:n :x :o :v]
                                         :repeatable false}

                                     :E {1 paredit.api.move_to_next_element_tail
                                         2 "Jump to next element tail"
                                         :mode [:n :x :o :v]
                                         :repeatable false}

                                     :W {1 paredit.api.move_to_next_element_head
                                         2 "Jump to next element head"
                                         :mode [:n :x :o :v]
                                         :repeatable false}

                                     :aF {1 paredit.api.select_around_top_level_form
                                          2 "Around top level form"
                                          :mode [:o :v]
                                          :repeatable false}

                                     :ae {1 paredit.api.select_element
                                          2 "Around element"
                                          :mode [:o :v]
                                          :repeatable false}

                                     :af {1 paredit.api.select_around_form
                                          2 "Around form"
                                          :mode [:o :v]
                                          :repeatable false}

                                     :gE {1 paredit.api.move_to_prev_element_tail
                                          2 "Jump to previous element tail"
                                          :mode [:n :x :o :v]
                                          :repeatable false}

                                     :iF {1 paredit.api.select_in_top_level_form
                                          2 "In top level form"
                                          :mode [:o :v]
                                          :repeatable false}

                                     :ie {1 paredit.api.select_element
                                          2 :Element
                                          :mode [:o :v]
                                          :repeatable false}

                                     :if {1 paredit.api.select_in_form
                                          2 "In form"
                                          :mode [:o :v]
                                          :repeatable false}}

                              :use_default_keys true})))}]
