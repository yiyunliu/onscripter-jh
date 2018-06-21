source $stdenv/setup
tar xzf $src
cd jh10001-onscripter-jh-647954377a77
make -f Makefile.Linux onscripter
mkdir -p $out/bin
patchelf --shrink-rpath onscripter
strip onscripter
mv onscripter $out/bin/onscripter-jh
