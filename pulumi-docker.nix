{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, parver
, pulumi
, semver
, typing-extensions
}:

buildPythonPackage rec {
  pname = "pulumi_docker";
  version = "4.5.7";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-Gfj53OMFWr0tov8QuGcjFhCIDiAcmNhEA21igOgbKSw=";
  };

  build-system = [
    setuptools
  ];

  dependencies = [
    parver
    pulumi
    semver
    typing-extensions
  ];

  meta = {
    homepage = "https://www.pulumi.com/docs/index.html";
    description = "A Pulumi package for interacting with Docker in Pulumi programs";
    license = lib.licenses.asl20;
  };
}