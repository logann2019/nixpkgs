{ stdenv, fetchurl, buildPythonPackage, python, pygtk, pil, libX11, gettext }:

buildPythonPackage rec {
    namePrefix = "";
    name = "mirage-0.9.5.2";

    src = fetchurl {
      url = "http://download.berlios.de/mirageiv/${name}.tar.bz2";
      sha256 = "d214a1b6d99d1d1e83da5848a2cef181f6781e0990e93f7ebff5880b0c43f43c";
    };

    postInstall = ''
      mv $out/lib/${python.libPrefix}/site-packages/*.egg/share $out
    '';

    doCheck = false;

    buildInputs = [ stdenv libX11 gettext ];

    pythonPath = [ pygtk pil ];

    meta = {
      description = "Simple image viewer written in PyGTK";

      homepage = http://mirageiv.berlios.de/;

      license = "GPLv2";
    };
}
