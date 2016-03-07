# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: http://bbs.archlinux.org/viewtopic.php?pid=521888#p521888

function retcode() {}

PROMPT=$'%B%{$fg_bold[blue]%}╭─{%b %{$fg[green]%}%n %{$fg_bold[blue]%}}───────〔 %{$fg[white]%}%~ %{$fg_bold[blue]%}〕───────{ %{$fg[yellow]%} %D %{$fg_bold[blue]%] }
%B%{$fg_bold[blue]%}╰─ %b%{$fg_bold[green]%}● %{$reset_color%}'

