# Update packages
apt-get update
# Upgrade packages
apt-get upgrade
# Install git
apt-get install -y git
# Install build essential
apt-get install -y build-essential
# Install CMake
apt-get install -y libssl-dev
wget https://github.com/Kitware/CMake/releases/download/v3.19.4/cmake-3.19.4.tar.gz
tar -xvf cmake-3.19.4.tar.gz
cd cmake-3.19.4
./bootstrap
make
make install
cd ..
rm cmake-3.19.4.tar.gz
rm -r cmake-3.19.4
# Install gcc-arm-none-eabi
wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2
tar -xvf gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2
cd gcc-arm-none-eabi-10-2020-q4-major
cp -r * /usr/local
cd ..
rm gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2
rm -r gcc-arm-none-eabi-10-2020-q4-major
# Install Protocol Buffers
apt-get install -y autoconf automake libtool curl make g++ unzip
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.14.0/protobuf-all-3.14.0.tar.gz
tar -xvf protobuf-all-3.14.0.tar.gz
cd protobuf-all-3.14.0
./configure
make
make check
make install
ldconfig
# Protocol Buffers python language packages (required for nanopb)
apt-get install -y python3-dev
apt-get install -y python3-setuptools
cd python
python3 setup.py build
python3 setup.py test
python3 setup.py build --cpp_implementation
python3 setup.py test --cpp_implementation
python3 setup.py install
cd ../..
rm protobuf-all-3.14.0.tar.gz
rm -r protobuf-all-3.14.0
# Install nanopb
wget https://github.com/nanopb/nanopb/archive/0.4.4.tar.gz
tar -xvf 0.4.4.tar.gz
cp -r nanopb-0.4.4 /usr/local/nanopb
rm 0.4.4.tar.gz
rm -r nanopb-0.4.4
# Install cpplint.py
wget https://raw.githubusercontent.com/bolderflight/build-tools/main/cpplint.py
chmod 777 cpplint.py
mv cpplint.py /usr/bin
