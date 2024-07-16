# dnsmasq

## Overview

This repository contains scripts and configurations to set up and manage a DNS `dnsmasq`. `dnsmasq` provides network infrastructure for small networks: DNS, DHCP, router advertisement, and network boot.

## Features

- **DNS Caching**: Reduces the load on upstream DNS servers by caching queries.
- **DNS Forwarding**: Forwards DNS queries to upstream DNS servers.
- **Integration with Vagrant**: Easy setup using Vagrant for development environments.

## Getting Started

### Prerequisites

- Vagrant
- VirtualBox or another Vagrant-supported provider

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/arendina/dnsmasq.git
    cd dnsmasq
    ```

2. Start the Vagrant environment:
    ```bash
    vagrant up
    ```

3. The `dnsmasq` service will be automatically configured and started.

### Usage

- **Starting the service**:
    ```bash
    sudo systemctl start dnsmasq
    ```

- **Stopping the service**:
    ```bash
    sudo systemctl stop dnsmasq
    ```

- **Checking the service status**:
    ```bash
    sudo systemctl status dnsmasq
    ```

## Configuration

The main configuration file for `dnsmasq` is located at `/etc/dnsmasq.conf`. You can customize the DNS and DHCP settings as needed. Some important configuration files include:

- `dnsclient-bootstrap.sh`: Script to configure DNS clients.
- `dnsmasq-bootstrap.sh`: Script to set up `dnsmasq`.
- `hosts-file`: Custom hosts file entries.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## Acknowledgements

- [Dnsmasq Documentation](http://www.thekelleys.org.uk/dnsmasq/doc.html)
- [Vagrant](https://www.vagrantup.com/)

