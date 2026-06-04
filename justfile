default:
    @just --list

list-configs:
    @echo -e "android"
    @echo -e "linux-full"
    @echo -e "linux-headless"
    @echo -e "linux-dev"
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

rebuild-home config cores="8" max_jobs="1":
    @nh home switch . -c nooneknows@{{ config }} --max-jobs {{ max_jobs }} -- --cores {{ cores }} --impure

rebuild-os host:
    @nh os switch . -H {{ host }} -- --impure

check:
    @nix flake check . --impure

show:
    @nix flake show . --impure

format:
    @treefmt

wallpaper wallpaper-id:
    @linux-wallpaperengine -s --scaling fill -r eDP-1 --bg {{ wallpaper-id }}
