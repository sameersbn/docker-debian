# About

Dockerfile to build a debian baseimage with a couple of extra packages.

The image is built on top of the `debian:jessie` image and the following extra packages are installed:

- `vim.tiny`
- `wget`
- `sudo`
- `net-tools`
- `ca-certificates`

The packages are selected based on the criteria that they are commonly used and that they do not influence the size of the resulting image too much.

Additionally `apt` is configured to **NOT** install `recommended` and `suggested` packages.
