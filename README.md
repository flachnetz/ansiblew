# ansible-wrapper

A simple ansible wrapper inspired by `gradle-wrapper` and `maven-wrapper`.

After installing ansible-wrapper,
you can then replace a call to `ansible-playbook` with
a call to `./ansiblew`. E.g. to execute a playbook called `web.yaml`, you just
run `./ansiblew web.yaml`.

## Install

Place a copy of the `ansiblew` script and the `ansiblew.json` configuration file
into a directory. You can simplify the installation by running:
```
curl https://raw.githubusercontent.com/flachnetz/ansiblew/master/get.sh | sh
```
