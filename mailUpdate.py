import smtplib
import re, os

from email.mime.text import MIMEText


GMAIL_HOST = 'smtp.gmail.com:587'
user = #enter your gmail username
passwd = #enter your gmail password

def sendEmail():
    msgText = "the status of your class has changed"
    msg = MIMEText(msgText)
    addr = user
    msg['To'] = addr
    msg['Subject'] = 'Changes to your crn'
    msg['From'] = user

    s = smtplib.SMTP(GMAIL_HOST)
    print "sending..."
    try:
        s.starttls()
        s.login(user, passwd)
        s.sendmail(user, [addr], msg.as_string())
    except Exception as e:
        print e
    finally:
        s.quit()
 
sendEmail()
