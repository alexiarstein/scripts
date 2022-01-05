#agregar comandos dentro del array cmds
#add cmds into the array cmds
cmds=()
printf -v "cmds[${#cmds[@]}]" '%q ' cmd1 "arg with space"
...
for i in "${!cmds[@]}"; do
    perc=... # TODO: Calculate percentage using i and ${#cmds[@]}
    echo -e "[${perc}%] ${cmds[i]}"
    eval "${cmds[i]}"
done
