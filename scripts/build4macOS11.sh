#!/bin/zsh
if [[ "$1" == "dylib" ]];then
CXX=clang++ CXXFLAGS="-DNDEBUG -g2 -O3 -arch x86_64 -arch arm64 -stdlib=libc++ -mmacosx-version-min=11.0" make -j 8 shared
else
CXX=clang++ CXXFLAGS="-DNDEBUG -g2 -O3 -arch x86_64 -arch arm64 -stdlib=libc++ -mmacosx-version-min=11.0" make -j 8
fi
