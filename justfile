default:
    @just --list

list-configs:
    @echo -e "android"
    @echo -e "linux-full"
    @echo -e "linux-headless"
    @echo -e "linux-lite"
    @echo -e "soyboydev"
    @echo -e "soyboydevlite"
    @echo -e "wsl"

list-hosts:
    @echo -e "darwin\n------"
    @echo -e "peter-macbook"
    @echo -e "\n"

    @echo -e "linux\n-----"
    @echo -e "peter-legion"
    @echo -e "note8"

rebuild-home config:
    @nh home switch . -c nooneknows@{{ config }} -- --impure

rebuild-os host:
    @nh os switch . -H {{ host }} -- --impure

check:
    @nix flake check . --impure

show:
    @nix flake show . --impure

format:
    @treefmt
