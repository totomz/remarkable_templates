# My reMarkable 2 templates
Thanks to [msencer](https://github.com/msencer/remarkable_templates)!

The templates are built using [NoTeTo](https://noteto.needleinthehay.de/) template builder. If you'd like to change, use the *Load from JSON* option on the tool, select the template you'd like to change from ```templates/<template_name>.json```, make your changes on the GUI and don't forget to save the JSON.

All templates are prefixed with `tom_` to avoid to overwrite existing/new templaates. 

## How to install the templates on Remarkable
Create an SSH config to connect to the device:

Get the device SSH password:(see https://remarkable.guide/guide/access/ssh.html#installing-a-ssh-key-on-your-device)
* On your device, open the `Menu` from the main page;
* Select `Settings` -> `Help` -> `Copyright and licenses`
* You'll find password and ip at the bottom of the page

Create an SSh alias in `~/.ssh/config`
```
host rem
    Hostname 192.168.10.112
    User root
    Port 22
    IdentityFile ~/.ssh/id_rsa
```


The install script uses the alias `rem`. Once you are done with the config test:

```
$ ssh rem
```

If the connection is successful & jq is in the path, run the install script:

```
$ ./install.sh
```
