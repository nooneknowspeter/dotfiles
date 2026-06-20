HOMES_DIR_PATH:="$DOTFILES/home/homes"

LINUX_HOSTS_DIR_PATH:="$DOTFILES/linux/hosts"
DARWIN_HOSTS_DIR_PATH:="$DOTFILES/darwin/hosts"
SCRIPTS:="$DOTFILES/scripts"

default:
    @just --list

list-configs:
    @{{ SCRIPTS }}/list.sh $(echo {{ HOMES_DIR_PATH }})

list-hosts:
    @{{ SCRIPTS }}/list.sh $(echo {{ DARWIN_HOSTS_DIR_PATH }}) $(echo {{ LINUX_HOSTS_DIR_PATH }})

list-scripts:
	@ls {{ SCRIPTS }}

run-script script args="":
	@{{ SCRIPTS }}/{{ script }} {{ args }}

rebuild-home config cores="8" max_jobs="1" backup="backup_home":
    @nh home switch . -b {{ backup }} -c nooneknows@{{ config }} --max-jobs {{ max_jobs }} -- --cores {{ cores }} --impure

rebuild-os host:
    @nh os switch . -H {{ host }} -- --impure

test-os host:
    @nh os test . -H {{ host }} -- --impure

check:
    @nix flake check . --impure

show:
    @nix flake show . --impure

format args="":
    @treefmt {{ args }} --config-file $DOTFILES/treefmt.toml

lint args="":
    @treefmt {{ args }} --config-file $DOTFILES/treefmt.lint.toml

wallpaper wallpaper-id:
    @linux-wallpaperengine -s --scaling fill -r eDP-1 --bg {{ wallpaper-id }}