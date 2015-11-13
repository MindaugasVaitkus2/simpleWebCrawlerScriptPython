import MySQLdb
import mysql.connector
import urllib2
import re
import socket




def crawler(row,output):
            global string
            url = "http://" + row[3];
            string = "noError"
            try:
                content = urllib2.urlopen(url, None, timeout = 10).read()
            except urllib2.HTTPError, e:
                string = str(e.code)
                content = "noCode"
            except urllib2.URLError, e:
                content = "noCode"
                string = str(e.args)
            except socket.timeout, e:
                content = "noCode"
                string = "timeout"
            
            output.write(url);
            if re.search("wfxbuild",content):
                output.write("; wfxja ");
            else:
                output.write("; wfxnein ");
            if re.search("webfix",content):
                output.write("; webja; "+string);
                output.write("\n");
            else:
                output.write("; webnein; "+string);
                output.write("\n");