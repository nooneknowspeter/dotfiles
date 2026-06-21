{
  config,
  lib,
  pkgs,
  ...
}:
{

  home.activation = {
    loadHome = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      			SCRIPT_PATH="$DOTFILES"/scripts/load-home.sh

      			if [ -x "$SCRIPT_PATH" ]; then
      				$DRY_RUN_CMD "$SCRIPT_PATH"
      			fi
      		'';
  };

}
