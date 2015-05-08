with import <nixpkgs> {};
let dnapy =

{ fetchgit, buildPythonPackage, wxPython }:

buildPythonPackage {
  name = "DNApy";
  namePrefix = "";
  src = ./.;
  propogatedBuildInputs = [ wxPython ];
  pythonPath = [ wxPython ];
  doCheck = false;
}

; in callPackage dnapy {}
