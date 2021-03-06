{ cabal, parsec }:

cabal.mkDerivation (self: {
  pname = "network";
  version = "2.2.1.4";
  sha256 = "16a842bee5db116f754b459ef261426b6705a6d79383c6d545c9df5f6329cd25";
  buildDepends = [ parsec ];
  meta = {
    description = "Networking-related facilities";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
