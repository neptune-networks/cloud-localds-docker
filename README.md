# cloud-localds

This is a thin wrapper around the [cloud-localds](https://manpages.debian.org/testing/cloud-image-utils/cloud-localds.1.en.html) tool so that it can be executed in environments in which it doesn't exist and isn't easily added.

## Usage

All arguments are passed through to the underlying command, so usage should be identical, with the exception of having to execute the command via Docker:

```
docker run --rm -v $(pwd):/data neptune-networks/cloud-localds-docker:latest
```

Say for example you had defined `user-data`, `meta-data`, and `network-config` files in the current directory, you could build the cloud-init local datastore with:

```
docker run --rm -v $(pwd):/data neptune-networks/cloud-localds-docker:latest -N network-config output.img user-data meta-data
```

Which would return `output.img` to be used as a NoCloud datastore.
