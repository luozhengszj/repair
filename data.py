#!/usr/bin/env python
# -*- coding:utf-8 -*-
import pymysql
import datetime

# 创建连接
conn = pymysql.connect(host='127.0.0.1', port=3306, user='sx', passwd='pw..', db='db', charset='utf8')

# 创建游标
cursor = conn.cursor()


def selectother(message1, message2):
    row = ''
    # 根据类型、搜索品牌、常有问题等
    if message1 != -1:
        sql = 'select txt from other where flag=%s and num=%s'
        cursor.execute(sql, [message1, message2])
        rows = cursor.fetchall()
        row1 = ''
        for st in rows:
            row1 = row1 + "," + st[0]
        sql = 'select txt from other where flag=3 and num=%s'
        cursor.execute(sql, [message2])
        rows = cursor.fetchall()
        row2 = ''
        for st in rows:
            row2 = row2 + "," + st[0]
        row = row1[1:] + "=" + row2[1:]
    # 根据选择的部门名称，搜索班组
    if message1 == '-1':
        sql = 'select txt from other where flag=5 and num=(select num from other where txt=%s)'
        cursor.execute(sql, message2)
        rows = cursor.fetchall()
        for st in rows:
            row = row + "," + st[0]
        row = row[2:]
    conn.commit()
    # cursor.close()
    # conn.close()
    return row

def insert(user, suser,tel,sel_type,sel_brand,sel_dep,sel_class,sel_pro):
    sql = "insert into repair(flag,ttype,brand,reason,depart,class,suser,tel,uuser,stime) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    nowTime = datetime.datetime.now().strftime('%Y%m%d%H%M')
    r = cursor.execute(sql, [0,sel_type,sel_brand,sel_pro,sel_dep,sel_class,suser,tel,user,nowTime])
    conn.commit()
    return str(r)

def selectall(ajax_flag):
    if ajax_flag!= '4':
        sql = 'select * from repair where flag=%s order by flag asc,id desc'
        cursor.execute(sql,int(ajax_flag))
        row = cursor.fetchall()
        return row
    else:
        sql = 'select * from repair order by flag asc,id desc'
        cursor.execute(sql)
        row = cursor.fetchall()
        return row

def updatestatus(id,xl_flag,why,way,note,luser):
    if xl_flag == 1:
        sql = 'update repair set flag=%s where id=%s'
        r = cursor.execute(sql, [ xl_flag, id])
    elif xl_flag == 2:
        sql = 'update repair set flag=%s,why=%s,way=%s,note=%s where id=%s'
        r = cursor.execute(sql, [ xl_flag, why,way, note, id])
    elif xl_flag == 3:
        nowTime = datetime.datetime.now().strftime('%Y%m%d%H%M')
        sql = 'update repair set flag=%s,luser=%s,ltime=%s where id=%s'
        r = cursor.execute(sql, [ xl_flag, luser, nowTime,  id])
    conn.commit()
    return str(r)

def gettimedata(time):
    time1 = time.split('-')[0]+'0000'
    time2 = time.split('-')[1]+'2460'
    sql = "select * from repair where stime BETWEEN "+time1+" AND "+time2+" OR ltime BETWEEN "+time1+" AND "+time2
    print(sql)
    cursor.execute(sql)
    row = cursor.fetchall()
    return row

def searchdata(name):
    sql = "select * from repair where luser LIKE  '%"+name+"%' OR suser LIKE  '%"+name+"%' OR class Like '%"+name+"%' OR depart Like '%"+name+"%'"
    cursor.execute(sql)
    row = cursor.fetchall()
    return row