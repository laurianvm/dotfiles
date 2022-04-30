# some aliases
alias ll='ls -alF'
alias la='ls -Al'
alias l='ls -CF'

#mkdir and enter
mgdir() {
    mkdir -p "${1}";
    if [[ "$?" == "0" ]]; then cd "${1}"; fi
}

#python virtualenv
alias pmenv='python3 -m venv venv'

paenv() {
    venv=${1:-"venv"};
    source ./${venv}/bin/activate;
    d=$(realpath "$(pwd")
    echo "virtualenv activated at ${d}"
}
