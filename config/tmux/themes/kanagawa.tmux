# KANAGAWA THEME BEGIN
color_kanagawa="#dcd7ba"
color_black="#0D1014"
color_1="#957FB8"
color_2="#1D2021"
color_3="#16161D"
color_4="#16161D"
color_5="#cccccc"

set-option -g clock-mode-style              24 
set-option -g clock-mode-colour             "$color_4"

set-option -g status-fg                     "$color_kanagawa"
set-option -g status-bg                     "$color_black"
set-option -g copy-mode-current-match-style "fg=$color_1,bg=$color_5"
set-option -g copy-mode-match-style         "fg=$color_1,bg=$color_5"
set-option -g menu-selected-style           "fg=$color_1,bg=$color_kanagawa"
set-option -g menu-style                    "fg=$color_kanagawa,bg=$color_1"
set-option -g message-style                 "bg=$color_4,fg=$color_1"
set-option -g message-command-style         "bg=$color_4,fg=$color_2"
set-option -g mode-style                    "bg=$color_5,fg=$color_1"
set-option -g pane-active-border-style      "fg=$color_1"
set-option -g pane-border-lines             "heavy"
set-option -g pane-border-style             "fg=$color_1"
set-option -g pane-border-style             "fg=$color_3"
set-option -g popup-border-lines            "rounded"
set-option -g status-right-style            "fg=$color_4"
set-option -g window-status-current-style   "fg=$color_5"
set-option -g window-status-style           "fg=$color_4"
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'

set-option -g window-status-format         '#{?#{==:#W,},#I,#I:#W}'
set-option -g window-status-current-format '#{?#{==:#W,},#I,#I:#W}'

set-option -g status-right                 ' #{?#{>:#{server_sessions},1},(#{session_name}),} %d/%m #(date +"%H:%M") '
set-option -g status-left                  ' '
# KANAGAWA THEME END
