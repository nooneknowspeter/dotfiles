{
  sessionVariables = {
    NIX_CONFIG = "experimental-features = nix-command flakes";

    EDITOR = "nvim";
    BROWSER = "brave";

    DOTFILES = "$HOME/dotfiles";
    RESOURCES = "$HOME/resources";
    SECRETS = "$HOME/secrets";
    PASSWORD_STORE_DIR = "$SECRETS";
  };

  shellAliases = {
    EDITOR = "nvim";
    BROWSER = "brave";
  };
}
