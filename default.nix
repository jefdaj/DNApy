with import <nixpkgs> {};
let dnapy =

{ fetchgit, buildPythonPackage, wxPython, xclip }:

buildPythonPackage {
  name = "DNApy";
  namePrefix = "";
  src = ./.;
  # TODO add xclip to the PATH in result/bin/DNApy
  propogatedBuildInputs = [ wxPython xclip ];
  pythonPath = [ wxPython ];
  doCheck = false;
}

; in callPackage dnapy {}
