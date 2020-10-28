use mysql;
create user fizz@'%' identified by '123456';
# 修改密码
# set password for 'user01'@'localhost'=password('anotherpassword')
# 授予user01管理test的全部权限
grant all privileges on test.* to user01;

# root远程访问
update user set host='%' where user ='root';
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

# 修改密码
# 8.0.4之前
#  set password for 'root'@'%' = password('123456');
# 8.0.4之后
# ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '新密码';