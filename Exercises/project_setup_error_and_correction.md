### During the vibrant-project setup I encountered multiple errors,this .md documents how I solved them

### Error 1: bash: asdf: command not found

[Reference article](https://github.com/asdf-vm/asdf/issues/279#issuecomment-378815108)

Add these 2 lines to your ~/.bashrc
```
. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
```

### Error 2: root@localhost denied error:

[Reference article](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04)
```
$ sudo mysql

mysql>ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'insert_password_set';
```

### Error 3: Could not start application pdf_generator & [error] `inotify-tools` is needed to run `file_system
```
$ wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb

$ sudo apt install ./wkhtmltox_0.12.6-1.focal_amd64.deb

$ sudo apt update

$ sudo apt install inotify-tools
```


