#-*-coding:utf-8-*-
#qpy://127.0.0.1:8080/
"""
This is a sample of WebApp

@Author JIMhackKING
"""

import bottle
from bottle import request, response, default_app, redirect
from bottle import run, debug, route, error, static_file, template, view
import sqlite3
import json
import md5
import threading
import os

#### 常量定义 #########
ASSETS = "/assets/"
ROOT = os.getcwd()

@route('/my_ip')
def my_ip():
    ip = request['REMOTE_ADDR']
    return '<h1>Your ip address is: <font color="red">%s</font></h1>' %ip
    
@error(404)
def page404(error):
    return template("404",
                page_name = "404",
                )

# 匹配 末尾不带 / 的 URL，并重定向到正确的URL
@route("/<path:re:[\w\/]+\w$>")
def redirect_path(path):
    return redirect("/%s/" %path)

# 上下两个路由绑定函数不能调换顺序，否则会出现抢先响应的情况

# 匹配静态文件
@route("/<filepath:path>")
def assets(filepath):
    return static_file(filepath, root=ROOT+ASSETS)

# 管理员登陆界面
@route("/admin/")
def admin_login():
    wrong = True if request.query.get("msg") else False
    return template("admin", 
                page_name = "admin",
                wrong=wrong,
                )

@route("/admin/login/", method="POST")
def login_success():
    username = request.forms.get("username")
    password = md5.new(request.forms.get("password")).hexdigest()

    # 设置响应头
    # response.set_header("Content-Type","application/json")
    response.set_header("Creater","JIMhackKING")

    try:
        conn = sqlite3.connect("db.sqlite3")
        cursor = conn.cursor()
        cursor.execute("select * from admin_user where username=? and password=?", (username, password))
        if not cursor.fetchone():
            # 重定向
            return redirect("/admin/?msg=WrongPassword")  # 暂时无法用 /admin?msg... 来做地址
    finally:
        cursor.close()
        conn.close()

    return '<h1 style="text-align:center;">No content yet.</h1>'  # 后台管理页面

# purecss.io 里的 blog 模板
# 增加动态URL, ps: /blog/DHC/
@route("/")
def blog():
    return template("pure-layout-blog",
                page_name = "pure-layout-blog",
                )

@route("/", method="POST")
def blog_logined():
    return template("pure-layout-blog",
                page_name = "pure-layout-blog",
                )

@route("/login/")
def blog_login():
    return template("blog-login",
                page_name = "blog-login",
                )

@route("/version/")
def version_information():
    return template("version-information",
                page_name = "version-information",
                )

"""
改进计划：
	· 为版本信息页创建模板，将各版本信息做成一块，在后台管理系统里面添加版本信息管理功能，每次版本更新只需要在后台管理系统进行编辑和添加。
	· 管理员可在后台管理系统编辑博客，在博客主页用户可以编辑博客
	· 增加精华、排行等功能
"""

application = default_app()