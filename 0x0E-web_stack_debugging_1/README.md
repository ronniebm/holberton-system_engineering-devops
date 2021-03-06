### PROJECT: 0x0E. Web stack debugging #1
----
#### For this project, we are going to learn about:
- Network basics.
- Web stack debugging.

&emsp;&emsp;<img src="https://i0.wp.com/the-avocado.org/wp-content/uploads/2020/02/Screen-Shot-2020-02-02-at-7.09.56-PM.png?resize=1920%2C768&ssl=1" />
----
### Personal Review:
- we received a container with Ubuntu 14 OS, and an Nginx Webserver installed.
- when using ```curl 0:80``` on terminal, it shows message:
<br>&emsp;&emsp;"curl: (7) Failed to connect to 0 port 80: Connection refused".
- Then we must find what's happening, and solve it.

### Personal Procedural task to solve:
1) check if nginx is running:
> service nginx status
2) check if nginx.cnf file has syntax issues:
> nginx -t

3) check if for some reason there is an apache webserver previously installed:
> sudo apache2 -v
4) check if there is some 'ufw' (uncomplicated firewall installed or active):
> sudo ufw -v
5) check port status with 'netstat' command:
> netstat -tulpn
5a) Optional (if only want to show what's happening on port 80):
> netstat -tulpn | grep :80
<br>
6) Nginx <b>/etc/nginx/sites-enabled/</b> must contain ONLY a softlink to the 'default' file,
which is trully located in <b>/etc/nginx/sites-available</b> !!!
<br>
7) We found that which really was inside <b>/etc/nginx/sites-enabled</b> was a 'default' file instead of a soft link. So we proceed to delete that default file and create the soft link to the trully 'default' file, this way:
> sudo rm -f /etc/nginx/sites-enabled/
> sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
8) Then we need to start again Nginx service:
> sudo service nginx start
9) Then we do again a 'curl command' on port 80, to verify if there's http response:
> curl 0:80
<br>&emsp;&emsp;<img src="images/01.png"/>
<br>
10) now everything is working ok with nginx !!!.

---
    git_user: ronniebm  /  email: ronnie.coding@gmail.com
