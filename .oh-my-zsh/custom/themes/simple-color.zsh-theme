# PROMPT="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

local ret_status="%(?:%{$fg_bold[green]%}✓:%{$fg_bold[red]%}✗)"
PROMPT="%{$(tput bold)%}%{$(tput setaf 1)%}[%{$(tput setaf 3)%}%n%{$(tput setaf 2)%}@%{$(tput setaf 4)%}%m %{$(tput setaf 5)%}%~%{$(tput setaf 1)%}]${ret_status}%{$(tput setaf 7)%}$ %{$(tput sgr0)%}"
