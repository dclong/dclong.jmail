# dclong.jmail  
**dclong.jmail** is a R package for sending an receiving emails based on the JavaMail APIs. 

# Installation
Download the source code, and use the following command to build this package
    R CMD build dclong.jmail
You can then install the package in terminal using command
    R CMD INSTALL dclong.jmail_1.0.tar.gz
or in R using command
    install.packages('dclong.jmail_1.0.tar.gz',repos=NULL)

To avoid issues of copyright, the JavaMail APIs are not shipped with this packages. 
Follow the instructions below after you have installed this package. 

1. Download the JavaMail APIs from Oracle at [](http://www.oracle.com/technetwork/java/index-138643.html).

2. Uncompress the archive. 

3. Copy the jar file "mail.jar" into the direcory "java" under the directory where dclong.jmail was installed to. 

4. Detach the library **dclong.jmail** using command `detach(package:dclong.jmail)` in R if it is loaded.

5. Load the library **dclong.jmail** and you are good to go. 

If any error occus after you follow the above instructions, restart R and everything should be OK.
These instructions will show up when **dclong.jmail** is loaded with no jar files found in its java directory. 

# Tips
1. This package support 3 different ways to send emails. 
First, you can use Java methods directly if you feel confident about Java;
second, you can use R wrapper functions for these Java methods. 
Last, there is a one-function way to send email using the wrapper function "sendEmail".
2. There are two ways to receive email using this package. 
First, you can use Java methods directly; second, you can use R wrapper functions for these methods.
1. You must add prefix "L" to integer arguments if you call Java methods directly instead of using R wrapper functions.
Surely it does not hurt to always add prefix "L" to integer arguments no matter you are using Java Methods directly or
R wrapper functions.

# Send Emails without Authentication  
If you have access to a smtp server which does not require authentication, 
you can use it to use emails without password. 
For example, if you are connect to network of ISU, you can use the following
code to send emails without password.  

    # create an object of JavaMailSender
    jms = jms.new('mailhub.iastate.edu')
    # set recipient
    jms$setTo(receiver_email)
    # # set subjcet and text body
    jms$setSubject('Hello from dclong.jmail')
    jms$setText('A testing mail.')
    # connect to the sever, you only need to connect once
    jms$authenticate('some@iastate.edu')
    # send the email
    jms$send()

# Send Emails using your Gmail account
    jms = jms.new('smtp.gmail.com',587L,'starttls')
    jms$setTo(receiver_email)
    jms$setSubject('Hello from dclong.jmail')
    # set email content as a multipart which contains attachment
    mp = jms$buildMultipart('an email with attachment',file_path)
    jms$setContent(mp)
    # connect to gmail, you only need to connect once
    jms$authenticate(your_gmail,your_password)
    # send the mail
    jms$send()
    # send another mail
    jms$setSubject("Another mail from dclong.jmail")
    jms$send()
    # to see all available methods of an object of JavaMailSender, use
    rJava::.jmethods(jms)

# Receive Emails
    # create an object of JavaMailReceiver
    jmr = jmr.new('imaps')
    # connect to the server
    jmr$authenticate('imap.gmail.com',your_gmail,your_password)
    # open folder
    jmr$openFolder('Inbox')
    # fetch all emails
    jmr$fetchAllEmails();
    # selected first buffered email
    jmr$selectBufferedEmail(0L)
    # number of new emails 
    jmr$getNewEmailsCount()
    # number of unread emails 
    jmr$getUnreadEmailCount()
    # get subject
    jmr$getSubject()  
    # to see all available methods of an object of JavaMailReceiver, use
    rJava::.jmethods(jmr)
 
