{ cabal, filepath }:

cabal.mkDerivation (self: {
  pname = "executable-path";
  version = "0.0.3";
  sha256 = "1jg58qf19qz93c60ryglcavwdcysz4fd4qn8kpw5im9w9kniawlc";
  buildDepends = [ filepath ];
  meta = {
    homepage = "http://code.haskell.org/~bkomuves/";
    description = "Finding out the full path of the executable";
    license = self.stdenv.lib.licenses.publicDomain;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
