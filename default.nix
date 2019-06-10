with import <nixpkgs> {};
with pythonPackages;

let dnapy =

{ fetchgit, buildPythonPackage, wxPython, xclip, pycairo }:

buildPythonPackage {
  name = "DNApy";
  namePrefix = "";
  # src = fetchgit {
  #   url = "https://github.com/jefdaj/DNApy";
  #   rev = "29355fffae9da47404e97128fd522f3e0e4561cf";
  #   sha256 = "1w65nd9zc8dr65kp4hm7k6xapr6mx5h1fr6m3xdam9iic7mjn117";
  # };
  src = ./.;
  pythonPath = [ wxPython xclip pycairo ];
  doCheck = false;
  postInstall = ''
    find $src
    for py in $src/DNApy/*.py; do
      substituteAllInPlace "$py"
    done
  '';
}

; in callPackage dnapy {}
