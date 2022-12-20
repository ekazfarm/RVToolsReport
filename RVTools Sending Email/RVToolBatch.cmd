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
set $SMTPserver=mail.email.com
set $SMTPport=25
set $Mailto=ferdian.s@email.com
set $Mailfrom=ferdian.s@email.com
set $Mailpassword=pass
set $Mailsubject=RVTools batch report
set $AttachmentDir=C:\Users\user\Documents
set $AttachmentFile=RVTools.xlsx



rem ===================
rem Start RVTools batch 
rem ===================
cd C:\Program Files (x86)\Robware\RVTools\
RVTools -u administrator@vsphere.local -p pass -s %$VCServer% -c ExportAll2xlsx -d %$AttachmentDir% -f %$AttachmentFile%

timeout /t 10
