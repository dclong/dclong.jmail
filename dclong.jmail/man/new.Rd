\name{jms.new}
\alias{jmr.new}
\alias{jms.new}
\title{Create New JavaMailSender and JavaMailReceiver Object}
\usage{
  jms.new(host, port, encryption)

  jmr.new(protocol)
}
\arguments{
  \item{host}{the name of the smtp server.}

  \item{port}{the port on which the mail server runs. The
  default port is 25. However, you must use an appropriate
  port if you use encryption. For illustration, see the
  example below. If you want to use Java methods directly,
  you must add prefix "L" to port (and other integer
  arguments such as email number, index, etc) i in order to
  find the right method. Surely it does not hurt, if you
  always add prefix "L" to integer arguments no matter you
  are using Java methods directly or R wrapper functions.}

  \item{encryption}{the type of encryption. Supported types
  are "tls", "starttls" and "ssl".}

  \item{protocol}{the protocol to use to fetch emails.
  Supported type are "pop3" and "imaps".}
}
\description{
  Function \code{jms.new} create an object of the
  JavaMailSender class, which can be used to send emails.
  If you are not familiar with Java and thus not confident
  to work on objects of JavaMailSender class, you can use
  the R wrapper function \code{sendEmail} to send emails.
  Function \code{jmr.new} creats an object of the
  JavaMailSender class, which can be used to receive
  emails. Objects of these two classes are reusable. You
  can also create multiple objects of javaMailSender and
  JavaMailReceiver though there is no necessary to do this
  generally speaking.
}
\examples{
\dontrun{
# create an object of JavaMailSender
jms = jms.new('smtp.gmail.com',587L,"starttls")
# set recipient
jms$setTo(recipient_email)
# set subjcet and text body
jms$setSubject('Hello from dclong.jmail')
jms$setText('A testing mail.')
# connect to gmail, you only need to connect once
jms$authenticate(your_gmail,your_password)
# send the mail
jms$send()
# send another mail
jms$setSubject("Another mail from dclong.jmail")
jms$send()
# too see all available methods of an object of JavaMailReceiver, use
rJava::.jmethods(jms)

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
# get number of unread emails
jmr$getUnreadEmailCount()
# get subject
jmr$getSubject()
# to see all available methods of an object of JavaMailReceiver, use
rJava::.jmethods(jmr)
}
}

