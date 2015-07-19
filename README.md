# build_kernel_modules

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with build_kernel_modules](#setup)
    * [What build_kernel_modules affects](#what-build_kernel_modules-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with build_kernel_modules](#beginning-with-build_kernel_modules)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Make sure kernel modules can be built on a system.

Should work under any Red Hattish Linux (RHEL, CentOS, Fedora, OEL,
SL, ...).


## Module Description

This module installs the packages necessary to enable the building of
kernel modules. This may be necessary in order to be able to install a
proprietary video driver, some virtualization software, some antivirus
software, or other such software that needs to hook into the kernel.

If you have
[DKMS](https://en.wikipedia.org/wiki/Dynamic_Kernel_Module_Support),
and the software you are installing is wise enough to expect and use
it, you probably don't need this module. DKMS seems to be used more
often under Ubuntu and Debian than CentOS, Fedora or RHEL.

If the software you are using is well-integrated into the Linux
distribution you are using, you probably don't need this module,
because the necessary kernel modules are pre-packaged.


## Setup

### What build_kernel_modules affects

* Installs make
* Installs gcc
* Installs kernel-devel

### Beginning with build_kernel_modules

```
    include build_kernel_modules
```

## Usage


## Reference

`build_kernel_modules`: Include this class for kernel module buildability.

## Limitations



## Development

Contributions welcome. Please file issues and send pull requests on GitHub.


## Release Notes/Contributors/Etc

Nothing to report yet.