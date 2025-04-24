# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ overlays ? [ ], ... }@args:
let
  pynixifyOverlay = self: super: {
    python2 = super.python2.override { inherit packageOverrides; };
    python27 = super.python27.override { inherit packageOverrides; };
    python3 = super.python3.override { inherit packageOverrides; };
    python35 = super.python35.override { inherit packageOverrides; };
    python36 = super.python36.override { inherit packageOverrides; };
    python37 = super.python37.override { inherit packageOverrides; };
    python38 = super.python38.override { inherit packageOverrides; };
    python39 = super.python39.override { inherit packageOverrides; };
    python310 = super.python310.override { inherit packageOverrides; };
  };

  nixpkgs =

    builtins.fetchTarball {
      url =
        "https://github.com/infobyte/nixpkgs/archive/b383cdd8037355bb0a34bee2672fbd9b346f11d7.tar.gz";
      sha256 = "1x0j1385qxxyf08zvj96m3wl8y0vyi0q85jidgn7bsjzy4ylzy7q";
    };

  packageOverrides = self: super: {
    apispec-webframeworks =
      self.callPackage ./packages/apispec-webframeworks { };

    bidict = self.callPackage ./packages/bidict { };

    billiard = self.callPackage ./packages/billiard { };

    bleach = self.callPackage ./packages/bleach { };

    celery = self.callPackage ./packages/celery { };

    cvss = self.callPackage ./packages/cvss { };

    faraday-agent-parameters-types =
      self.callPackage ./packages/faraday-agent-parameters-types { };

    faraday-plugins = self.callPackage ./packages/faraday-plugins { };

    faradaysec = self.callPackage ./packages/faradaysec { };

    filedepot = self.callPackage ./packages/filedepot { };

    filteralchemy-fork = self.callPackage ./packages/filteralchemy-fork { };

    flask = self.callPackage ./packages/flask { };

    flask-celery-helper = self.callPackage ./packages/flask-celery-helper { };

    flask-classful = self.callPackage ./packages/flask-classful { };

    flask-kvsession-fork = self.callPackage ./packages/flask-kvsession-fork { };

    flask-limiter = self.callPackage ./packages/flask-limiter { };

    flask-login = self.callPackage ./packages/flask-login { };

    flask-security-too = self.callPackage ./packages/flask-security-too { };

    flask-sqlalchemy = self.callPackage ./packages/flask-sqlalchemy { };

    flask-wtf = self.callPackage ./packages/flask-wtf { };

    kombu = self.callPackage ./packages/kombu { };

    marshmallow-sqlalchemy =
      self.callPackage ./packages/marshmallow-sqlalchemy { };

    psycogreen = self.callPackage ./packages/psycogreen { };

    simplekv = self.callPackage ./packages/simplekv { };

    sqlalchemy = self.callPackage ./packages/sqlalchemy { };

    vine = self.callPackage ./packages/vine { };

    werkzeug = self.callPackage ./packages/werkzeug { };

  };

in import nixpkgs (args // { overlays = [ pynixifyOverlay ] ++ overlays; })
