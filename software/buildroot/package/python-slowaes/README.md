A simple buildroot makefile for python-slowaes.

### Installation
```bash
$ cd $YOUR_BUILDROOT_DIR
$ git clone https://github.com/nybex/buildroot-python-slowaes.git package/python-slowaes
$ echo 'source "package/python-slowaes/Config.in"' >> Config.in
$ make menuconfig # Select python-slowaes on the first screen
```
