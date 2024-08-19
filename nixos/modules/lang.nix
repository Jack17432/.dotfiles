{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python311
    rustup
    sqlite
    dotnet-sdk_8

    vscode
  ];
}
