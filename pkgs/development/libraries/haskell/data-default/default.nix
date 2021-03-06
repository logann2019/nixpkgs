{ cabal, dataDefaultClass, dataDefaultInstancesBase
, dataDefaultInstancesContainers, dataDefaultInstancesDlist
, dataDefaultInstancesOldLocale
}:

cabal.mkDerivation (self: {
  pname = "data-default";
  version = "0.5.3";
  sha256 = "0d1hm0l9kim3kszshr4msmgzizrzha48gz2kb7b61p7n3gs70m7c";
  buildDepends = [
    dataDefaultClass dataDefaultInstancesBase
    dataDefaultInstancesContainers dataDefaultInstancesDlist
    dataDefaultInstancesOldLocale
  ];
  meta = {
    description = "A class for types with a default value";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
