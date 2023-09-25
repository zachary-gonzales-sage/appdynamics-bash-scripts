# API Commandline Tool

The [API Commandline Tool](https://github.com/Appdynamics/api-commandline-tool) (ACT) is a shell script wrapper around [API](https://docs.appdynamics.com/display/latest/AppDynamics+APIs#AppDynamicsAPIs-apiindex) calls towards an AppDynamics controller. It allows you to run common commands from your shell, integrate them with other shell commands and automate certain tasks.

ACT is completely bash based, so you don't need to install or compile anything, just download and run it!

If you want to see some examples what ACT can do, before installing it, look into the list of [available commands](USAGE.md) and [available recipes](RECIPES.md)

As a byproduct the tool generates a [postman](https://www.getpostman.com/) compatible [collection of API calls](postman-collection.json). The integration is described at [POSTMAN.md](POSTMAN.md)

## Installation

To use the latest release of ACT just download the raw version of [act.sh](https://github.com/Appdynamics/api-commandline-tool/blob/master/act.sh)

Afterwards run `act.sh config` to provide your controller host and credentials. This will create a configuration file at `~/.appdynamics/act/config.sh`, e.g.:

```bash
CONFIG_CONTROLLER_HOST=https://appdynamics.example.com:8090
CONFIG_CONTROLLER_CREDENTIALS=me@customer1:secure2
CONFIG_CONTROLLER_COOKIE_LOCATION=/home/ubuntu/.appdynamics/act/cookie.txt
```

To update your configuration, you can either edit this file or you can re-run the setup:

```shell
act.sh config -f
```

If you want to work with multiple controllers, you can use [environments](USAGE.md#environment)


## Usage

`act.sh` integrates different commands to interact with your AppDynamics controller. See [USAGE.md](USAGE.md) for a full list of commands or call `act.sh help` from the command line.

A simple work flow example is listing, exporting and deleting a dashboard:

```shell
act.sh dashboard list
act.sh dashboard export 13
act.sh dashboard delete 13
```

Utilize custom scripts for CoreCon (within Sage Intacct) to compile a comprehensive inventory list of all resources located in the AppDynamics host.

```shell
./get_inventory_list.sh > ../output.txt
```