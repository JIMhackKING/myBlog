# coding:utf-8
'''
模块导入未成功，
直接运行程序成功。
修改思路：
	1、把main.py改为脚本
	2、新建一个主程序（类似 manage.py）
	3、创建线程分别处理main.py和monitor.py
'''

# 先把所有 .py 文件的 md5 值写入数据库
# 再使用md5.new方法与数据库对比（循环）
# 如果有其中一个不相同就重启程序
# 作为模块被 main.py 导入
# 监控 .py 文件是否被修改
import sys
import os
import md5
import glob
import sqlite3

def monitor(files):
	# 文件通配
	file_list = glob.glob(files)

	try:
		conn = sqlite3.connect("db.sqlite3")
		cursor = conn.cursor()
		for i in file_list:
			f = open(i)
			# 从数据库调取md5
			cursor.execute("select md5 from previous_file where filename=?",(i.split("\\")[-1],))

			# 新旧 md5 值比对
			previous_md5 = cursor.fetchone()
			new_md5 = md5.new(f.read()).hexdigest()
			# 如果有新文件加入插入一行
			if not previous_md5:
				cursor.execute("INSERT INTO previous_file VALUES (?,?)", (i,new_md5))
				continue

			if new_md5 != previous_md5:
				# 重启程序和更新数据库
				# restart_program()
				cursor.execute("UPDATE previous_file set md5=? where filename=?",(new_md5,i))
				sys.exit()

			f.close()
	finally:
		cursor.close()
		conn.commit()
		conn.close()

# 重启函数
def restart_program():
	python = sys.executable
	print "Files have changed, RESTART..."
	os.execl(python, python, * sys.argv)

