# some aliases
alias ll='ls -alF'
alias la='ls -Al'
alias l='ls -CF'

#python virtualenv
alias pmenv='python3 -m venv venv'

#mkdir and enter
mgdir() {
    mkdir -p "${1}";
    if [[ "$?" == "0" ]]; then cd "${1}"; fi
}

paenv() {
    venv=${1:-"venv"};
    source ./${venv}/bin/activate;
    d=$(realpath "$(pwd)")
    echo "virtualenv activated at ${d}"
}
