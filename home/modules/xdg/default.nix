{ config, pkgs, ... }: {

  xdg = {
    mimeApps = {
      enable = true;
      defaultApplications = let
        browser = [ "brave.desktop" "firefox.desktop" ];
        editor = [ "nvim.desktop" "code.desktop" ];
        pdf = [ "org.pwmt.zathura-pdf-poppler.desktop" "zathura.desktop" ];
      in {
        "application/json" = browser;
        "application/pdf" = pdf;

        "text/html" = browser;
        "text/xml" = browser;
        "text/plain" = editor;
        "application/xml" = browser;
        "application/xhtml+xml" = browser;
        "application/xhtml_xml" = browser;
        "application/rdf+xml" = browser;
        "application/rss+xml" = browser;
        "application/x-extension-htm" = browser;
        "application/x-extension-html" = browser;
        "application/x-extension-shtml" = browser;
        "application/x-extension-xht" = browser;
        "application/x-extension-xhtml" = browser;
        "application/x-wine-extension-ini" = editor;

        # # define default applications for some url schemes.
        # "x-scheme-handler/about" = browser; # open `about:` url with `browser`
        # "x-scheme-handler/ftp" = browser; # open `ftp:` url with `browser`
        # "x-scheme-handler/http" = browser;
        # "x-scheme-handler/https" = browser;
        # # https://github.com/microsoft/vscode/issues/146408
        # "x-scheme-handler/vscode" = ["code-url-handler.desktop"]; # open `vscode://` url with `code-url-handler.desktop`
        # "x-scheme-handler/vscode-insiders" = ["code-insiders-url-handler.desktop"]; # open `vscode-insiders://` url with `code-insiders-url-handler.desktop`

        "audio/*" = [ "mpv.desktop" ];
        "video/*" = [ "mpv.desktop" ];
        "image/*" = [ "imv-dir.desktop" ];
        "image/gif" = [ "imv-dir.desktop" ];
        "image/jpeg" = [ "imv-dir.desktop" ];
        "image/png" = [ "imv-dir.desktop" ];
        "image/webp" = [ "imv-dir.desktop" ];

        "inode/directory" = [ "yazi.desktop" ];
      };
    };
    userDirs = {
      enable = true;
      createDirectories = true;
    };
  };

}
