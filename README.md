.nix file for onscripter-jh. Only tested on arch linux. This seems to be the only one that renders Chinese font correctly (or at least out of box).
# Quick start
```
# clone this repository
git clone https://github.com/yiyunliu/onscripter-jh

# build the package
nix-build -E 'with import <nixpkgs> {}; callPackage ./. {}'

# adding onscripter-jh to your path
nix-env -i ./result
```
You need to specify your lib directory for the program to run correctly. Normally you don't have to do this, but onscripter-jh has libGL.so as its runtime dependency like many other games. The following command works perfectly on my machine:
```
# run onscripter-jh
cd YOUR-GAME-DIRECTORY
LD_LIBRARY_PATH=/usr/lib onscripter-jh
```
# Any help would be appreciated!
Try compiling this on Mac OS, and let me know if it works or not.
