# build-tools
Tools for compiling and uploading software.
   * [License](LICENSE.md)
   * [Changelog](CHANGELOG.md)
   * [Contributing guide](CONTRIBUTING.md)

# Description
Ubuntu 20.04 is used as our build-environment, either installed natively on a machine or via the Windows Subsystem for Linux (WSL).

# Installation
For initial setup of the development environment on your machine:

1. Install Ubuntu 20.04, either natively or in WSL. If you're planning on using MATLAB Simulink, I recommend using WSL1 instead of WSL2 so you will have better performance operating in the Windows file system. 

2. Download or clone this repository, navigate to it in your WSL or Linux terminal and run *bootstrap.sh* with *sudo* permissions.

3. After installation, you may delete this repository
