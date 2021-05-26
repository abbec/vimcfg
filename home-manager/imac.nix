{ config, pkgs, ...}:
{
  home.packages = with pkgs; [
    glances
    zulip-term
  ];

  home.file.".gnupg/gpg-agent.conf".text = ''
    enable-ssh-support
    pinentry-program ${pkgs.pinentry_mac}/Applications/pinentry-mac.app/Contents/MacOS/pinentry-mac
  '';
}
