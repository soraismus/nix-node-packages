{ buildNodePackage, nodePackages, pkgs }:
buildNodePackage {
    name = "glob";
    version = "7.0.6";
    src = pkgs.fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-7.0.6.tgz";
      sha1 = "211bafaf49e525b8cd93260d14ab136152b3f57a";
    };
    deps = with nodePackages; [
      fs-realpath_1-0-0
      inherits_2-0-1
      once_1-3-3
      inflight_1-0-4
      path-is-absolute_1-0-0
      minimatch_3-0-3
    ];
    meta = {
      homepage = "https://github.com/isaacs/node-glob#readme";
      description = "a little globber";
    };
  }
