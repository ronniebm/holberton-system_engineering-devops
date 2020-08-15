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
&emsp;&emps;"curl: (7) Failed to connect to 0 port 80: Connection refused".
- Then we must find what's happening, and solve it.

### Personal Procedural task to solve:
1) check if nginx is running:
&emsp;```service nginx status```

2) check if nginx.cnf file has syntax issues:
&emsp;```nginx -t```

3) check if for some reason there is an apache webserver previously installed:
&emsp;```sudo apache2 -v```

4) check if there is some 'ufw' (uncomplicated firewall installed or active):
&emsp;```sudo ufw -v```

5) check port status with 'netstat' command:
&emsp;```netstat -tulpn```

5.a) Optional (if only want to show what's happening on port 80):
&emsp;```netstat -tulpn | grep :80```

6) Nginx <b>/etc/nginx/sites-enabled/</b> must contain ONLY a softlink to the 'default' file,
which is trully located in <b>/etc/nginx/sites-available</b> !!!

7) We found that which really was inside <b>/etc/nginx/sites-enabled</b> was a 'default' file instead of a soft link. So we proceed to delete that default file and create the soft link to the trully 'default' file, this way:
&emsp;&emsp;```sudo rm -f /etc/nginx/sites-enabled/```
&emsp;&emsp;```sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default```

8) Then we need to start again Nginx service:
&emsp;&emsp;```sudo service nginx start```

9) Then we do again a 'curl command' on port 80, to verify if there's http response:
&emsp;&emsp;```curl 0:80```

&emsp;&emsp;<img src="/images/01.png"/>

10) now everything is working ok with nginx !!!.

---
git_user: ronniebm  /  email: ronnie.coding@gmail.com
