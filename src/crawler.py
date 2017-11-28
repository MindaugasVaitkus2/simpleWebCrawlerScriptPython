import MySQLdb
import mysql.connector
import urllib2
import re
import socket




def crawler(row,output):#Funktion zur Webseitabfrage
            global string #Error Variable
            url = "http://" + row[3]; #Url der ausgewaehlten Website; row je nach MySQL Datenbank
            string = "noError"
            try: #try to open Website
                content = urllib2.urlopen(url, None, timeout = 10).read()
            except urllib2.HTTPError, e: #Errors wie timeout, Passwortabfrage, nicht verfuegbar
                string = str(e.code)
                content = "noCode"
            except urllib2.URLError, e: #Errors auf URL fehler
                content = "noCode"
                string = str(e.args)
            except socket.timeout, e: #socket timeout Error
                content = "noCode"
                string = "timeout"
            
            output.write(url);
            if re.search("wfxbuild",content): #wsb ueberpruefung im Quelltext
                output.write("; wfxja ");
            else:
                output.write("; wfxnein ");
            if re.search("webfix",content): #wsc ueberpruefung im Quelltext
                output.write("; webja; "+string);
                output.write("\n");
            else:
                output.write("; webnein; "+string);
                output.write("\n");
