# Changelog

## v2.0.0
- Updated to use WSL or Linux instead of VirtualBox, was having a lot of reliability issues with Vagrant and VirtualBox.
- Speed up using binary packages, where able, instead of building from source.
- Install a common set of build tools in /usr/local/bfs instead of having each repo carry their own copy. Should significantly ease maintenance and addition of new microcontrollers.

## v1.0.1
- Added the "create" option to the Vagrantfile synced folder to fix an issue where the user would need to create this file first

## v1.0.0
- Initial baseline
