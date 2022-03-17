#!/bin/bash

# Install system-level dependencies
sudo apt-get install -y git cmake
sudo apt-get install -y libatlas-base-dev gfortran
sudo apt-get install -y libhdf5-serial-dev hdf5-tools
sudo apt-get install -y python3-dev
sudo apt-get install -y nano locate

# Install SciPy prerequisites
sudo apt-get install -y libfreetype6-dev python3-setuptools
sudo apt-get install -y protobuf-compiler libprotobuf-dev openssl
sudo apt-get install -y libssl-dev libcurl4-openssl-dev
sudo apt-get install -y cython3

# Install XML tools for working with TensorFlow Object Detection (TFOD) API
sudo apt-get install -y libxml2-dev libxslt1-dev

# Update CMake
wget http://www.cmake.org/files/v3.13/cmake-3.13.0.tar.gz
tar xpvf cmake-3.13.0.tar.gz cmake-3.13.0/
cd cmake-3.13.0/
./bootstrap --system-curl
make -j4

# Update bashrc profile
cd
echo 'export PATH=/home/jetson/cmake-3.13.0/bin/:$PATH' >> ~/.bashrc
source ~/.bashrc

# Install OpenCV system-level dependencies and other development dependencies
sudo apt-get install -y build-essential pkg-config
sudo apt-get install -y libtbb2 libtbb-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install -y libxvidcore-dev libavresample-dev
sudo apt-get install -y libtiff-dev libjpeg-dev libpng-dev
sudo apt-get install -y python-tk libgtk-3-dev
sudo apt-get install -y libcanberra-gtk-module libcanberra-gtk3-module
sudo apt-get install -y libv4l-dev libdc1394-22-dev
