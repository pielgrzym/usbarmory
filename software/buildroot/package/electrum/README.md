A simple buildroot makefile for electrum.

### Installation
```bash
$ cd $YOUR_BUILDROOT_DIR
$ git clone https://github.com/nybex/buildroot-electrum.git package/electrum
$ echo 'source "package/electrum/Config.in"' >> Config.in
$ make menuconfig # Select electrum on the first screen
```
