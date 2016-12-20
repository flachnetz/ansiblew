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

## Configuration

Edit `ansiblew.json` to configure the ansible version you want to use.
You can also specify a list of extra python packages to install. This
might be useful, if your ansible playbook includes modules depending
on third-party modules.

```json
{
  "ansible_version": "2.2.0.0-1",
  "requirements": ["requests==2.12.4"]
}
```

## Update

You can update the wrapper by passing `update` as the only parameter: `./ansiblew update`
