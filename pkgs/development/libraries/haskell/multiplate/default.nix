{ cabal, transformers }:

cabal.mkDerivation (self: {
  pname = "multiplate";
  version = "0.0.2";
  sha256 = "02pqfkdcv4fn0pmxphg19b3fiazn4hpphfj8xgp77vpy2lczndsw";
  buildDepends = [ transformers ];
  meta = {
    homepage = "http://haskell.org/haskellwiki/Multiplate";
    description = "Lightweight generic library for mutually recursive data types";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
