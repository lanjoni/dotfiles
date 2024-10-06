function fish_prompt --description 'Write out the prompt'
	set -l color_cwd
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix 'λ'
    end

    set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')

    echo -n -s (prompt_pwd) (set_color yellow) ' {'$git_branch'}'  " $suffix "
    set_color normal
end
