# Container Image for VMware PowerCLI on PowerShell Core

## Overview

Provides a container image for running VMware PowerCLI and supporting modules.

This image includes the following components:

Component | Version | Description
---------|----------|----------
VMware Photon OS | 4.0 | A Linux container host optimized for vSphere and cloud-computing platforms.
Microsoft PowerShell Core | 7.2.0 | A cross-platform (Windows, Linux, and macOS) automation and configuration tool/framework.
`VMware.PowerCLI` | 12.6.0 | A collection of PowerShell modules for managing and automating VMware products.
`VMware.vSphere.SsoAdmin` | 1.3.8 | PowerShell module for vCenter Single Sign-on.
`PowerVCF`| 2.2.0 | PowerShell module for VMware Cloud Foundation API.
`PowerValidatedSolutions` | 1.7.0 | PowerShell module for VMware Validated Solutions.
`VMware.PowerManagement` | 1.0.0.1002 | PowerShell module for power management of VMware Cloud Foundation.
`VMware.CloudFoundation.Reporting` | 1.0.0.1001 | PowerShell module for VMware Cloud Foundation reporting.

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
