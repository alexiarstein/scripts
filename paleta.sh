#! /bin/bash

n=32
arg=setaf
text='Minilux 1.0 (Saturno): Este color es %s %d'

_help()
{
    printf 'use: %s [--help|-H] [--16] [--256] [--bg|-b]\n' "$(basename $0)"
    exit 0
}

while (( $# > 0 ))
do
    case "$1" in
        256|--256|-256)
            n=256
            shift
            ;;

        16|--16|-16)
            n=16
            shift
            ;;

        --bg|-b)
            arg=setab
            shift
            ;;

        --help|-H)
            _help
            ;;

        --*|-*)
            _help
            ;;
    esac
done

for f in $(seq $n)
do
    tput $arg $f
    printf "$text" $arg $f
    tput sgr0
    if (( f % 16 == 0 )) || [[ "$arg" == 'setab' ]] || [[ "$text" != '█' ]]
    then
        printf '\n'
    fi
done
