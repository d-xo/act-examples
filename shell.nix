let
  sources = import ./nix/sources.nix;
  pkgs = import sources.dapptools {};
  act = import sources.act {};
in
  pkgs.mkShell {
    buildInputs = with pkgs; [
      coq
      dapp
      seth
      hevm
      niv
      act.exe
    ];
    DAPP_SOLC="${pkgs.solc-static-versions.solc_0_8_6}/bin/solc-0.8.6";
  }
