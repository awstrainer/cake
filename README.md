# wordpress app

This is a sample Wordpress based application hostedd on AWS and a monitoring mechanism using Prometheus, grafana and cadvisor 
AWS dynamic inventory is being used here

# Pre-requisites

```bash
ssh acces to a linux server and Ansible installed on the server
Access to variables.sh, containing AWS keys, which is not checked into github
```

# To deploy wordpress site

```bash
$ sh variables.sh(#present locally only, not on github) #to set variables and aws keys
$ ansible-playbook site.yml	
```

# This will do following actions
```bash
1. ec2 instance will be launched
2. Refresh dynamic inventory
3. Docker and other prerequisites are installed
4. Wordpress compose file will be copied to remote server and get executed 
```
