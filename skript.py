import MySQLdb
import mysql.connector
import urllib2
import re
from time import *
from crawler import crawler

print localtime()

cnx = mysql.connector.connect(
                     user = "root",
                     host = "localhost",
                     passwd = "",
                     db = "reporting")

datei = open("daten.dat","w")
cur = cnx.cursor()
cur.execute("SELECT * FROM testdata")

for row in cur.fetchall():
    crawler(row,datei)


datei.close()
cnx.close()

print localtime()


