with import <nixpkgs> {};
let dnapy =

{ fetchgit, buildPythonPackage, wxPython, xclip, pycairo }:

buildPythonPackage {
  name = "DNApy";
  namePrefix = "";
  src = ./.;
  pythonPath = [ wxPython xclip pycairo ];
  doCheck = false;
}

; in callPackage dnapy {}
