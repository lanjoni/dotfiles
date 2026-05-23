[{1 :coder/claudecode.nvim
  :config true
  :dependencies [:folke/snacks.nvim]
  :keys [{1 :<leader>a 2 nil :desc "AI/Claude Code"}
         {1 :<leader>ac 2 :<cmd>ClaudeCode<cr> :desc "Toggle Claude"}
         {1 :<leader>af 2 :<cmd>ClaudeCodeFocus<cr> :desc "Focus Claude"}
         {1 :<leader>ar 2 "<cmd>ClaudeCode --resume<cr>" :desc "Resume Claude"}
         {1 :<leader>aC 2 "<cmd>ClaudeCode --continue<cr>" :desc "Continue Claude"}
         {1 :<leader>am 2 :<cmd>ClaudeCodeSelectModel<cr> :desc "Select Claude model"}
         {1 :<leader>ab 2 "<cmd>ClaudeCodeAdd %<cr>" :desc "Add current buffer"}
         {1 :<leader>as 2 :<cmd>ClaudeCodeSend<cr> :desc "Send to Claude" :mode :v}
         {1 :<leader>as 2 :<cmd>ClaudeCodeTreeAdd<cr> :desc "Add file" :ft [:NvimTree :neo-tree :oil :minifiles :netrw]}
         {1 :<leader>aa 2 :<cmd>ClaudeCodeDiffAccept<cr> :desc "Accept diff"}
         {1 :<leader>ad 2 :<cmd>ClaudeCodeDiffDeny<cr> :desc "Deny diff"}]}]
