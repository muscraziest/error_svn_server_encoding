# Getting started

Steps to reproduce the error

```bash
$> git clone https://github.com/muscraziest/error_svn_server_encoding
$> cd error_svn_server_encoding
$> docker-compose up salt-master
Creating network "errorsvnserverencoding_default" with the default driver
Creating errorsvnserverencoding_svn-server_1 ...
Creating errorsvnserverencoding_svn-server_1 ... done
Creating errorsvnserverencoding_salt-master_1 ...
Creating errorsvnserverencoding_salt-master_1 ... done
Attaching to errorsvnserverencoding_salt-master_1
salt-master_1  | [ERROR   ] Command '['svn', '--non-interactive', 'checkout', 'svn://svn-server/testrepo']' failed with return code: 1
salt-master_1  | [ERROR   ] stdout: A    testrepo/t{U+03B5}st
salt-master_1  | [ERROR   ] stderr: svn: E155009: Failed to run the WC DB work queue associated with '/tmp/testrepo', work item 1 (file-install t{U+03B5}st 1 0 1 1)
salt-master_1  | svn: E000022: Can't convert string from 'UTF-8' to native encoding:
salt-master_1  | svn: E000022: /tmp/testrepo/t{U+03B5}st
salt-master_1  | [ERROR   ] retcode: 1
salt-master_1  | Exception occurred in runner salt.cmd: Traceback (most recent call last):
salt-master_1  |   File "/usr/lib/python3/dist-packages/salt/client/mixins.py", line 387, in _low
salt-master_1  |     data['return'] = self.functions[fun](*args, **kwargs)
salt-master_1  |   File "/usr/lib/python3/dist-packages/salt/runners/salt.py", line 106, in cmd
salt-master_1  |     if fun in functions \
salt-master_1  |   File "/usr/lib/python3/dist-packages/salt/modules/svn.py", line 174, in checkout
salt-master_1  |     return _run_svn('checkout', cwd, user, username, password, opts)
salt-master_1  |   File "/usr/lib/python3/dist-packages/salt/modules/svn.py", line 73, in _run_svn
salt-master_1  |     raise CommandExecutionError(result['stderr'] + '\n\n' + ' '.join(cmd))
salt-master_1  | salt.exceptions.CommandExecutionError: svn: E155009: Failed to run the WC DB work queue associated with '/tmp/testrepo', work item 1 (file-install t{U+03B5}st 1 0 1 1)
salt-master_1  | svn: E000022: Can't convert string from 'UTF-8' to native encoding:
salt-master_1  | svn: E000022: /tmp/testrepo/t{U+03B5}st
salt-master_1  |
salt-master_1  | svn --non-interactive checkout svn://svn-server/testrepo
```
