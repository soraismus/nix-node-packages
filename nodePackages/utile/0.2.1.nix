{ brokenPackage, buildNodePackage, nodePackages, pkgs }:
buildNodePackage {
    name = "utile";
    version = "0.2.1";
    src = pkgs.fetchurl {
      url = "http://registry.npmjs.org/utile/-/utile-0.2.1.tgz";
      sha1 = "930c88e99098d6220834c356cbd9a770522d90d7";
    };
    deps = with nodePackages; [
      async_0-2-10
      mkdirp_0-5-1
      ncp_0-4-2
      deep-equal_0-1-2
      rimraf_2-4-3
      i_0-3-3
    ];
    meta = {
      description = "A drop-in replacement for `util` with some additional advantageous functions";
    };
  }