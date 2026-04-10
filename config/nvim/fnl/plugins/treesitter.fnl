[{1 :nvim-treesitter/nvim-treesitter
  :lazy false
  :build ":TSUpdate"
  :config (fn []
            (let [treesitter (require :nvim-treesitter)]
              (treesitter.install [:bash
                                   :clojure
                                   :commonlisp
                                   :dockerfile
                                   :elixir
                                   :fennel
                                   :go
                                   :html
                                   :java
                                   :javascript
                                   :typescript
                                   :json
                                   :lua
                                   :markdown
                                   :nix
                                   :ocaml
                                   :rust
                                   :yaml
                                   :zig])))}]
