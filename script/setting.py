# coding:utf-8
import md5
import sqlite3
import msvcrt

# 认证输入用户名和密码，返回 True 或者 False
def check(user, pw):
    # Check user/pw here and return True/False
    try:
        conn = sqlite3.connect("db.sqlite3")
        cursor = conn.cursor()
        cursor.execute("select * from admin_user where username=? and password=?", (username, password))
        if cursor.fetchone():
            return True
    finally:
        cursor.close()
        conn.close()

# create a super user
def create_super_user(username, password):
    try:
        conn = sqlite3.connect("db.sqlite3")
        cursor = conn.cursor()
        cursor.execute("INSERT INTO admin_user VALUES (?,?)", (username, 
            md5.new(password).hexdigest()))
    except:
        return "Super user create unsuccessfully"
    finally:
        cursor.close()
        conn.commit()
        conn.close()

    return "Super user create successfully"