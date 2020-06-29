#!/bin/bash
# https://pimylifeup.com/raspberry-pi-opencv/
# $ sudo vi /etc/dphys-swapfile
# ... CONF_SWAPSIZE=2048
# $ sudo systemctl restart dphys-swapfile

#sudo apt install -y cmake build-essential pkg-config git
#sudo apt install -y libjpeg-dev libtiff-dev libjasper-dev libpng-dev libwebp-dev libopenexr-dev
#sudo apt install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev\
#                 libx264-dev libdc1394-22-dev libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev
#sudo apt install -y libgtk-3-dev libqtgui4 libqtwebkit4 libqt4-test python3-pyqt5
#sudo apt install -y libatlas-base-dev liblapacke-dev gfortran
#sudo apt install -y libhdf5-dev libhdf5-103
#sudo apt install -y python3-dev python3-pip python3-numpy
#
#git clone https://github.com/opencv/opencv.git
#git clone https://github.com/opencv/opencv_contrib.git
#
#mkdir build
pushd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules \
    -D ENABLE_NEON=ON \
    -D ENABLE_VFPV3=ON \
    -D BUILD_TESTS=OFF \
    -D INSTALL_PYTHON_EXAMPLES=OFF \
    -D OPENCV_ENABLE_NONFREE=ON \
    -D CMAKE_SHARED_LINKER_FLAGS=-latomic \
    -D BUILD_EXAMPLES=OFF ../opencv
make -j4
#sudo make install
#sudo ldconfig
#
popd
#
#pkg-config --modversion opencv
#pkt-config --libs --cflags opencv
#
## $ python3
## >>> import cv2
## >>> cv2.__version__
