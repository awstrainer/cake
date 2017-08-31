# wordpress app

This is a sample Wordpress based application hosted on AWS, provisioned by Ansible and a monitoring mechanism using Prometheus, grafana and cadvisor 
AWS dynamic inventory is being used here

# Pre-requisites

```bash
ssh acces to a linux server and Ansible installed on the server
Access to variables.sh, containing AWS keys, which is not checked into github
AWS account createdd with keypair file downloaded on the server
A security group created with access to ports:80, 22, 8000, 9090, 9100
```

# To deploy wordpress site

```bash
$ sh variables.sh(#present locally only, not on github) #to set variables and aws keys
$ ansible-playbook site.yml	
```

# This will do following actions
```bash
1. ec2 instance(s) will be provisioned
2. Will refresh dynamic inventory
3. Docker and other prerequisites will be installed
4. Wordpress compose file will be copied to remote server and get executed 
5. We should be able to access the app at http://localhost:8000 #localhost is AWS server being provisioned here
```
