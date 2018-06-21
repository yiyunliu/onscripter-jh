{stdenv, SDL2, SDL2_image, SDL2_ttf, SDL2_mixer, bzip2, smpeg, fontconfig, libvorbis, lua, fetchurl}:
stdenv.mkDerivation{
  name = "onscripter-jh";
  builder = ./builder.sh;
  src = fetchurl {
    url = https://bitbucket.org/jh10001/onscripter-jh/get/tip.tar.gz;
    sha256 = "bfb7eb3e49d4302cb2b8b250b61968ebad5ac9050df805525d14a988bfc5be27";
  };

  buildInputs = [SDL2 SDL2_image SDL2_ttf SDL2_mixer bzip2 smpeg fontconfig libvorbis lua]; 

  inherit stdenv;
}
