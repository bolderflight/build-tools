![Bolder Flight Systems Logo](img/logo-words_75.png)

# Build Tools
Tools for compiling and uploading software.
   * [License](LICENSE.md)
   * [Changelog](CHANGELOG.md)
   * [Contributing guide](CONTRIBUTING.md)

# Description

## Docker
A Docker image is available of our [build environment](https://hub.docker.com/repository/docker/flybrianfly/bfs-dev). The container should be run in interactive mode mounting the software directory to the container. For example, assuming that I've downloaded the [SPAARO repository](https://github.com/bolderflight/spaaro) and navigated to it in a terminal, I can mount it to a directory in the container named */app* by:

```shell
docker container run -it -v ${pwd}:/app flybrianfly/bfs-dev
```

Now, I can navigate to the */app* directory in docker and build the [SPAARO flight software](https://github.com/bolderflight/spaaro) by navigating to the flight code directory, creating a build directory, running cmake, and compiling the software to hex. In this case, I am building software for the FMU-R v2, which is specified in the CMake options.

```shell
cd /app
cd flight_code
mkdir build
cd build
cmake .. -D FMU=v2
make flight_hex
```

After the build is complete, I am left with a flight.hex file in the build folder on my host system. This can be flashed to the flight control system using the [Teensy Loader](https://www.pjrc.com/teensy/loader.html) or [Teensy Command Line Interface](https://www.pjrc.com/teensy/loader_cli.html).

## Ubuntu 22.04 or WSL
Alternatively, Ubuntu 22.04 can be installed and used to build our flight software, either installed natively or in WSL. The *bootstrap.sh* file in this repo installs the necessary packages to configure the system and should be run with sudo permissions. With installation under Ubuntu or WSL, the [Teensy Command Line Interface](https://www.pjrc.com/teensy/loader_cli.html) is integrated with the build-tools and you can flash software to the flight control system using the *_upload* command along with the target command. For example:

```shell
make flight_upload
```

# Troubleshooting

## WSL

If this is installed in WSL and you're having issues running git on the Windows file system, you can edit or create */etc/wsl.conf* in WSL and add:

```
[automount]
options = "metadata"
```

Reboot Windows. All of the operations like git, mkdir, etc should now work fine in the Windows drives.

## Linux

You may need to download udev rules to enable uploading code to the microcontrollers. Download the [udev rules](https://www.pjrc.com/teensy/00-teensy.rules) and copy the file to */etc/udev/rules.d*

```
sudo cp 00-teensy.rules /etc/udev/rules.d/
```
