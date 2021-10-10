# Changelog

## v2.0.4
- Added some information on getting WSL to work on the Window's drives

## v2.0.3
- Had some issues building the mat_converter, due to a CMake version mis-match, so went back to building CMake and Protobuf from source

## v2.0.2
- Updated build tools to simplify

## v2.0.1
- Fixed bug with nanopb install location

## v2.0.0
- Updated to use WSL or Linux instead of VirtualBox, was having a lot of reliability issues with Vagrant and VirtualBox.
- Speed up using binary packages, where able, instead of building from source.
- Install a common set of build tools in /usr/local/bfs instead of having each repo carry their own copy. Should significantly ease maintenance and addition of new microcontrollers.

## v1.0.1
- Added the "create" option to the Vagrantfile synced folder to fix an issue where the user would need to create this file first

## v1.0.0
- Initial baseline
