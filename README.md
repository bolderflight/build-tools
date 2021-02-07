# build-tools
Tools for compiling and uploading software.
   * [License](LICENSE.md)
   * [Changelog](CHANGELOG.md)
   * [Contributing guide](CONTRIBUTING.md)

# Description
[Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) are used to manage and run the development environment for our software. This environment can be installed on any host machine and provides a consistent build environment for our development team, researchers, contributors, and the open-source community at large. Within our build environment, we use a Linux operating system with CMake and GCC as a build system and git for versioning.

# Installation
For initial setup of the development environment on your machine:

1. Install [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/).

2. Download or clone the *Vagrantfile* and *bootstrap<nolink>.sh* from this repository, move them both to the directory on your host machine where you would like to develop and build our software.

3. Open a terminal, navigate to your development directory and issue the command:
    ```shell
    $ vagrant up
    ```
    Note that this command will download and configure the virtual machine on your host. This process can take a significant amount of time.

4. Our products use the same microcontrollers as the [PJRC](https://www.pjrc.com/) Teensy 3.x and 4.x ecosystem. The easiest way to upload code and monitor USB outputs is by installing [Teensyduino](https://www.pjrc.com/teensy/td_download.html) on your host machine.

# Usage
To use our build environment:

1. Start your virtual machine, if it isn't already running:
    ```shell
    $ vagrant up
    ```

2. SSH into your virtual machine:
    ```shell
    $ vagrant ssh
    ```

3. Clone a repo. Your current directory on your host machine is mapped to */home/vagrant/work* on your virtual machine. Use *git* to clone a repo. 

4. Instructions for building the library or application are given in each repo. For software meant to run on an embedded microcontroller, there will be a *_hex* target to create a hex file. Select the hex file in Teensyduino, power the board, and press the upload button to upload software to the board.

5. You can exit your virtual machine with:
    ```shell
    $ exit
    ```

6. If you would like to shut down the virtual machine, the command is:
    ```shell
    vagrant halt
    ```