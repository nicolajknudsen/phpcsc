# PHP CodeSniffer Container

This small project exposes a php executable from a container instead of installing php locally, along with binaries for phpcs to use with VS Code.

Based on this answer on SO: https://stackoverflow.com/a/52421923.

The 'start' script creates the container and the local executables in `/usr/local/bin`. **Note that it might conflict with your locally installed php.**

This project is written on Ubuntu, but it should be easy to modify for other OS'es.

### Docker setup

This project requires docker and docker compose version > 4.2.

Follow the official guides. This project is only tested on Ubuntu with the `docker.io` package.

### VS Code setup

Add the extension PHP Sniffer & Beautifier for VS Code (valeryanm.vscode-phpsab).

Configure the extension; for easy configuration place these lines in settings.json:

```
{
    "phpsab.executablePathCS": "/usr/local/bin/phpcs",
    "phpsab.executablePathCBF": "/usr/local/bin/phpcbf",
    "phpsab.standard": "modified-drupal-coding-standard",
    "phpsab.fixerEnable": true,
    "phpsab.snifferEnable": true,
    "phpsab.snifferShowSources": true,
    "phpsab.debug": true
}
```