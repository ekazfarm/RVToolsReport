rem #########################
rem Name	RVToolsBatch
rem By		RobWare
rem Date	December 2017
rem Version	3.10.1
rem #########################

rem =====================================
rem Include robware/rvtools in searchpath
rem =====================================
set path=%path%;C:\Program Files (x86)\Robware\RVTools


rem =========================
rem Set environment variables
rem =========================
set $VCServer=vcsa.local
set $SMTPserver=mail.jba.co.id
set $SMTPport=25
set $Mailto=syachferdian4@gmail.com
set $Mailfrom=ferdian.s@jba.co.id
set $Mailpassword=WelcomeJBA123
set $Mailsubject=RVTools batch report
set $AttachmentDir=C:\Users\eka\Documents
set $AttachmentFile=RVTools.xlsx



rem ===================
rem Start RVTools batch 
rem ===================
RVTools -u administrator@vsphere.local -p C3rtpriv.123 -s %$VCServer% -c ExportAll2xlsx -d %$AttachmentDir% -f %$AttachmentFile%

timeout /t 30
