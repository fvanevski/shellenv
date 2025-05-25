bindkey '^I' menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete

bindkey -M menuselect '^I' menu-complete
bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete

bindkey -M menuselect '^[[D' .backward-char '^[OD' .backward-char
bindkey -M menuselect '^[[C' .forward-char '^[OC' .forward-char

bindkey -M menuselect '^M' .accept-line

# --- Fix for Home/End keys ---
# Common sequences for Home/End
bindkey '^[[1~' beginning-of-line  # Home
bindkey '^[[4~' end-of-line        # End
bindkey '^[[H' beginning-of-line   # Home (another common sequence)
bindkey '^[[F' end-of-line         # End (another common sequence)
# --- End Home/End Fix ---
