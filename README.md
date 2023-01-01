# My reMarkable 2 templates
Thanks to [msencer](https://github.com/msencer/remarkable_templates)!

The templates are built using [NoTeTo](https://noteto.needleinthehay.de/) template builder. If you'd like to change, use the *Load from JSON* option on the tool, select the template you'd like to change from ```templates/<template_name>.json```, make your changes on the GUI and don't forget to save the JSON.

All templates are prefixed with `tom_` to avoid to overwrite existing/new templaates. 

## How to install the templates on Remarkable

Please follow [this guide](https://remarkablewiki.com/tech/ssh) to setup the SSH access to your device. The install script uses the same config. Once you are done with the config test:

```
$ ssh rem
```

If the connection is successful & jq is in the path, run the install script:

```
$ ./install.sh
```
