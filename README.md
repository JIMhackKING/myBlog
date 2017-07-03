# my Blog - 一个基于bottle的博客网站 #

## 运行服务器 ##

    python manage.py runserver

runserver 参数直接运行服务器，端口默认为8080，runserver 参数之后可以指定你想运行的端口

## 创建超级用户 ##

	python manage.py createsuperuser

在终端输入以上命令之后按照提示进行操作就可以创建一个超级用户，用于后台管理

## 以调试模式运行服务器 ##

    python manage.py runserver --debug

以调试模式运行服务器，当程序出错时可以直接在网页上查看错误报告

## 多进程/线程运行

    python manage.py runserver --server

以多进程/线程运行服务器，可以解决多用户访问的问题