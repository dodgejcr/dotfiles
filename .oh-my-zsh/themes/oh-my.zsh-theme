# user, host, full path, and time/date
# on two lines for easier vgrepping
PROMPT='%B%{$fg_bold[blue]%}╭─{%b %{$fg[green]%}%n %{$fg_bold[blue]%}}───────〔 %{$fg[white]%}%~ %{$fg_bold[blue]%}〕───────{ %{$fg[yellow]%} %D %{$fg_bold[blue]%] }
%B%{$fg_bold[blue]%}╰─ %b%{$fg_bold[green]%}● %{$reset_color%}'
RPROMPT=$'%b%{$fg[black]%}%B$(git_prompt_info) %{$reset_color%}%{$fg_bold[white]%}${${KEYMAP/vicmd/--NORMAL--}/(main|viins)/--INSERT--}%{$reset_color%}'
