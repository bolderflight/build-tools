# Update packages
apt-get update
# Upgrade packages
apt-get upgrade -y
# Install git
apt-get install -y git
# Install build essential
apt-get install -y build-essential
# Install CMake
apt-get install -y libssl-dev
apt-get install -y cmake
# Install gcc-arm-none-eabi
wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.07/gcc-arm-none-eabi-10.3-2021.07-x86_64-linux.tar.bz2
tar -xvf gcc-arm-none-eabi-10.3-2021.07-x86_64-linux.tar.bz2
cd gcc-arm-none-eabi-10.3-2021.07
cp -r * /usr/local
cd ..
rm gcc-arm-none-eabi-10.3-2021.07-x86_64-linux.tar.bz2
rm -r gcc-arm-none-eabi-10.3-2021.07
# Install Protocol Buffers
apt-get install -y libprotobuf-dev
apt-get install -y python3-dev
apt-get install -y python3-pip
pip install setuptools protobuf grpcio-tools
# Install cpplint
pip install cpplint
# Make a directory for BFS build tools
mkdir /usr/local/bfs
# Copy nanopb into build tools
git clone https://github.com/bolderflight/nanopb.git /usr/local/nanopb
