{ cabal, deepseq }:

cabal.mkDerivation (self: {
  pname = "HUnit";
  version = "1.2.5.2";
  sha256 = "0hcs6qh8bqhip1kkjjnw7ccgcsmawdz5yvffjj5y8zd2vcsavx8a";
  buildDepends = [ deepseq ];
  meta = {
    homepage = "http://hunit.sourceforge.net/";
    description = "A unit testing framework for Haskell";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
