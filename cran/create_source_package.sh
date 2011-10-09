#!/bin/sh

#shell script to update the R interface files 
#note: this requires that a current version of PEER is build and ready to run using cmake
rm -f ./peer/src/*.so	
rm -f ./peer/src/*.h
rm -f ./peer/src/*.cpp
rm -rf ./peer/src-i386
rm -rf ./peer/src-x86_64
rm -f ./peer/R/peer.R
rm -f ./peer/man
rm ./peer/DESCRIPTION
rm ./peer/NAMESPACE

ln -s $(pwd)/../External/alglib/src/dataanalysis.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/dataanalysis.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/diffequations.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/diffequations.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/fasttransforms.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/alglibinternal.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/alglibinternal.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/fasttransforms.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/integration.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/integration.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/interpolation.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/interpolation.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/linalg.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/linalg.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/optimization.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/optimization.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/solvers.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/solvers.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/specialfunctions.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/specialfunctions.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/statistics.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/statistics.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/stdafx.h ./peer/src/

ln -s $(pwd)/../include/ossolog.h ./peer/src/

ln -s $(pwd)/../External/alglib/src/alglibmisc.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/alglibmisc.h ./peer/src/
ln -s $(pwd)/../External/alglib/src/ap.cpp ./peer/src/
ln -s $(pwd)/../External/alglib/src/ap.h ./peer/src/

#ln -s $(pwd)/../External/alglib ./peer/src/alglib
ln -s $(pwd)/../External/Eigen ./peer/src/Eigen
#ln -s $(pwd)/../External/csv_parser ./peer/src/csv_parser

ln -s $(pwd)/../src/array_helper.cpp ./peer/src/
ln -s $(pwd)/../include/array_helper.h ./peer/src/
ln -s $(pwd)/../src/bayesnet.cpp ./peer/src/
ln -s $(pwd)/../include/bayesnet.h ./peer/src/
ln -s $(pwd)/../src/sim.cpp ./peer/src/
ln -s $(pwd)/../include/sim.h ./peer/src/
ln -s $(pwd)/../src/sparsefa.cpp ./peer/src/
ln -s $(pwd)/../include/sparsefa.h ./peer/src/
ln -s $(pwd)/../src/vbfa.cpp ./peer/src/
ln -s $(pwd)/../include/vbfa.h ./peer/src/

ln -s $(pwd)/../build/R/peerR_wrap.cxx ./peer/src/peerR_wrap.cpp
ln -s $(pwd)/../build/R/peer.R ./peer/R/peer.R

ln -s $(pwd)/../build/R/libpeer.so ./peer/src/libpeer.so

ln -s $(pwd)/../R/peer/man ./peer/man
ln -s $(pwd)/../R/peer/NAMESPACE ./peer/NAMESPACE
ln -s $(pwd)/../R/peer/DESCRIPTION ./peer/DESCRIPTION
ln -s $(pwd)/../R/peer/R/plot.R ./peer/R/plot.R

#create .tar.gz with symlinks dereferenced
tar cfzh ./peer_source.tgz ./peer
