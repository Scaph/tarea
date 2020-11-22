#!/usr/bin/env python3

#Hola profe, este script está hecho para mandar desde el archivo .txt que contiene los correos electrónicos
#Usé el siguiente comando:cat correos.txt | xargs -n1 ./send_email.py

import sys
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib
import json

 

data = {}
with open('my_id.json') as f:
        data = json.load(f)
# create message object instance
msg = MIMEMultipart()
#message = sys.argv[1]
message = "Este mensaje es para que nos reunamos este Jueves, envié este correo a nuestro club de amigos. El lugar será..."

 

# setup the parameters of the message

 

msg['From'] = data['user']

 

msg['To'] = sys.argv[1]

#msg['Subject'] = sys.argv[2]
msg['Subject'] = "Reunión de amigos"
 

# add in the message body
msg.attach(MIMEText(message, 'plain'))

 

#create server
server = smtplib.SMTP('smtp.office365.com:587')

 

server.starttls()

 

# Login Credentials for sending the mail
print(data['user'])
server.login(data['user'], data['pass'])

 


# send the message via the server.
server.sendmail(msg['From'], msg['To'], msg.as_string())

 

server.quit()

 

print("successfully sent email to %s:" % (msg['To']))
