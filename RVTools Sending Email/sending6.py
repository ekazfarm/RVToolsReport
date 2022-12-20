import os
import smtplib
from email.message import EmailMessage

msg=EmailMessage()
Username = 'ferdian.s@email.com'
password =  'pass'
msg['sender'] = 'ferdian.s@email.com'
msg['Subject']='RVTools Dayli Report'

msg['To']='useremail@email.com'

with open('EmailTemplate.txt') as myfile:
    data=myfile.read()
    msg.set_content(data)

with open("RVTools.xlsx","rb") as f:
    file_data=f.read()
    print("File data in binary",file_data)
    file_name=f.name
    print("File name is", file_name)
    msg.add_attachment(file_data,maintype="application",subtype="xlsx",filename=file_name)

with smtplib.SMTP_SSL('mail.email.com',465) as server:
    server.login(Username,password)
    server.send_message(msg)

print("Email sent !!!")