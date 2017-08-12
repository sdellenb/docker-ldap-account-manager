# LDAP Account Manager for Docker

Docker images for the [LDAP Account Manager](https://www.ldap-account-manager.org) directory management tool.

## Usage

LDAP Account Manager uses flat configuration files (`config.cfg` and `[profile name].conf` for each server profile), which can be generated through the GUI. Run this container locally, configure the global settings and your server profiles, and copy the generated config files out of the container with `docker cp`. Then, simply mount these files as a volume/secret in production.
