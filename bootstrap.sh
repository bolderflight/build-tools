# Update packages
apt-get update
# Install git
apt-get install -y git
# Install build essential
apt-get install -y build-essential
# Install CMake
apt-get install -y cmake
# Install gcc-arm-none-eabi
apt-get install -y gcc-arm-none-eabi
# Install Protocol Buffers
apt-get install -y protobuf-compiler
apt-get install -y python3-protobuf
# nanopb
apt-get install -y python3-grpcio
git clone https://github.com/bolderflight/nanopb.git /usr/local/nanopb
# Install cpplint
apt-get install -y cpplint
# libusb-dev for Teensy CLI
apt-get install -y libusb-dev