{ cabal, binary, syb }:

cabal.mkDerivation (self: {
  pname = "netlist";
  version = "0.3.1";
  sha256 = "0f3fwgpg0p3ajgxfzbqr4z04ly5cdbhjxms5xbd0k2ixdwgyxm67";
  buildDepends = [ binary syb ];
  meta = {
    description = "Netlist AST";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.simons ];
  };
})
