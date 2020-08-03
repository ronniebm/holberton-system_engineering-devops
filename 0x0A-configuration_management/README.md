### 0x0A Configuration management  

configuration management tools (CM) are specialized softwares that help us to do server configuration management in an easy/trusted/fast way on IT industry.  

#### Requirements:  
* All your files will be interpreted on Ubuntu 14.04 LTS  
* All your files should end with a new line  
* The Puppet manifests must pass puppet-lint version 2.1.1 without any errors  
* The Puppet manifests must run without error  
* The Puppet manifests first line must be a comment explaining what the Puppet manifest is about  
* The Puppet manifests files must end with the extension .pp  

#### Install puppet-lint  
* $ apt-get install -y ruby  
* $ gem install puppet-lint -v 2.1.1