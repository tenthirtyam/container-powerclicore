# Container Image for VMware PowerCLI on PowerShell Core

## Overview

Provides a container image for running VMware PowerCLI and supporting modules.

This image includes the following components:

Component | Version | Description
---------|----------|----------
`VMware.PowerCLI` | 12.7.0 | A collection of PowerShell modules for managing and automating VMware products.
`VMware.vSphere.SsoAdmin` | 1.3.8 | PowerShell module for vCenter Single Sign-on.
`PowerVCF`| 2.2.0 | PowerShell module for VMware Cloud Foundation API.

## Get Started

Run the following to download the latest container from Docker Hub:

```hcl
docker pull tenthirtyam/powerclicore:latest
```

Run the following to download a specific version from Docker Hub:

```hcl
docker pull tenthirtyam/powerclicore:x.y.z
```

Open an interactive terminal:

```hcl
docker run --rm -it tenthirtyam/powerclicore
```

Run a local script:

```hcl
  docker run --rm --entrypoint="/usr/bin/pwsh" -v /users/tenthirtyam/pwsh:/tmp/shared tenthirtyam/powerclicore /tmp/shared/example.ps1
```

Where `/users/tenthirtyam/pwsh` is the local directory path for your PowerShell scripts.
