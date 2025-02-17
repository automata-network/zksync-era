{ cargoArtifacts
, craneLib
, versionSuffix
, commonArgs
}:
craneLib.buildPackage (commonArgs // {
  pname = "zksync_tee_prover";
  version = (builtins.fromTOML (builtins.readFile ../../core/bin/zksync_tee_prover/Cargo.toml)).package.version + versionSuffix;
  cargoExtraArgs = "-p zksync_tee_prover --bin zksync_tee_prover";
  inherit cargoArtifacts;
})
