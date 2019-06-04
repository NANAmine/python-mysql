#!/usr/bin/python3
 
import pymysql
 
# 打开数据库连接
db = pymysql.connect(host='39.105.221.247', port=3306, user='root', passwd='数据库密码', db='jeesite', charset='utf8')
#db = pymysql.connect("39.105.221.247","root","数据库密码","jeesite" )
 
# 使用cursor()方法获取操作游标 
cursor = db.cursor()
 
# SQL 查询语句
sql = "SELECT * FROM yp"
try:
   # 执行SQL语句
   cursor.execute(sql)
   # 获取所有记录列表
   results = cursor.fetchall()
   for row in results:
       # 打印结果
      print (row)
except:
   print ("Error: unable to fetch data")
 
# 关闭数据库连接
db.close()
