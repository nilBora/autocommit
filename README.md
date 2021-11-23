# Autocommit

Autocommit your git repository

if you need add ssh agent for crontab you need add second param like `ssh-add /Users/user/.ssh/id_rsa`

## Example crontab

`*/10 * * * * sh /path/to/script/autocommit.sh /path/to/git/storage > /path/to/log.txt`

use via ssh agent

`*/10 * * * * sh /path/to/script/autocommit.sh /path/to/git/storage 'ssh-add /Users/user/.ssh/id_rsa' > /path/to/log.txt`