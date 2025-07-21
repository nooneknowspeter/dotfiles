{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    # brave
  ];

  programs.brave = {
    enable = true;
    extensions = [
      # Bitwarden
      {
        id = "nngceckbapebfimnlniiiahkandclblb";
      }
      # Change Case
      {
        id = "lpakoahdokkkonadfppfgmednkknpgbm";
      }
      # Dark Reader
      {
        id = "eimadpbcbfnmbkopoojfekhnkhdbieeh";
      }
      # Email Tracker
      {
        id = "bnompdfnhdbgdaoanapncknhmckenfog";
      }
      # Google Translate
      {
        id = "aapbdbdomjkkjkaonfhkkikfgjllcleb";
      }
      # Immersive Translate
      {
        id = "bpoadfkcbjbfhfodiogcnhhhpibjhbnh";
      }
      # Keepa
      {
        id = "neebplgakaahbhdphmkckjjcegoiijjo";
      }
      # PDF Reader
      {
        id = "ieepebpjnkhaiioojkepfniodjmjjihl";
      }
      # PDF24
      {
        id = "eoinpcbakedlpilhibkbejdgkifenhfb";
      }
      # Picture in Picture
      {
        id = "hkgfoiooedgoejojocmhlaklaeopbecg";
      }
      # Shazam
      {
        id = "mmioliijnhnoblpgimnlajmefafdfilb";
      }
      # Simplify
      {
        id = "pbanhockgagggenencehbnadejlgchfc";
      }
      # Unhook
      {
        id = "khncfooichmfjbepaaaebmommgaepoid";
      }
      # Video Speed Controller
      {
        id = "nffaoalbilbmmfgbnbgppjihopabppdk";
      }
      # vidIQ
      {
        id = "pachckjkecffpdphbpmfolblodfkgbhl";
      }
      # Vimium
      {
        id = "dbepggeogbaibhgnhhndojpepiihcmeb";
      }
      # Wappalyzer
      { id = "gppongmhjkpfnbhagpmjfkannfbllamg"; }
    ];
    commandLineArgs = [ "--ozone-platform-hint=auto" ];
  };

}
