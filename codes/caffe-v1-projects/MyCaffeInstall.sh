#!/bin/bash
sudo apt-get -y update && apt-get -y upgrade
sudo apt-get install -y libprotobuf-dev libleveldb-dev\
	libsnappy-dev libhdf5-serial-dev protobuf-compiler\
	libgflags-dev libgoogle-glog-dev liblmdb-dev
sudo apt-get install -y libopencv-dev libboost-all-dev gfortran\
	libjpeg62 libfreeimage-dev libatlas-base-dev\
	libbz2-dev libxml2-dev libxslt1-dev libffi-dev libssl-dev libgflags-dev
sudo apt-get install curl git
sudo apt-get install -y python-pip python-dev python-scipy
sudo pip install --upgrade pip
#
git clone https://github.com/BVLC/caffe.git
