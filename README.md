# coreos-dhclient-v6
Dockerized ISC DHCP (IPv6) client for CoreOS.

This systemd unit relies on having Internet access to pull the Docker image.

Currently it is used to perform prefix delegation (hence the flag `-P` when running the Docker image).

# Installation

```bash
$ sudo install -o root -m 644 dhclient-v6\@.service /etc/systemd/system/
```

# Usage

For an interface `$IF`, assuming that there is a configuration file at `/etc/dhclient/v6/$IF.conf`:

```
$ sudo systemctl start dhclient-v6@$IF.service
```
