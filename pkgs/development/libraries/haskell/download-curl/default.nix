{ cabal, curl, feed, tagsoup, xml }:

cabal.mkDerivation (self: {
  pname = "download-curl";
  version = "0.1.4";
  sha256 = "1wf3pf2k4i6jvpfsjlxdj6v53qd33jj1z1ipaf3p47glgx4xw3lm";
  buildDepends = [ curl feed tagsoup xml ];
  meta = {
    homepage = "http://code.haskell.org/~dons/code/download-curl";
    description = "High-level file download based on URLs";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
