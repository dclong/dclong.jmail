\name{sendEmail}
\alias{sendEmail}
\title{Send Email}
\usage{
  sendEmail(subject, body, attachment, to, cc, bcc, from,
    user, pwd, host, port, encryption)
}
\arguments{
  \item{subject}{email subject, empty string by default.}

  \item{body}{email body, empty string by default.}

  \item{attachment}{a string vector containing path of
  files to be attached.}

  \item{to}{a string vector containing email addresses of
  type "To" recipients.}

  \item{cc}{a string vector containing email addresses of
  type "Cc" recipients.}

  \item{bcc}{a string vector containing email addresses of
  type "Bcc" recipients.}

  \item{from}{information about the sender. This can be
  different from the actual email address which you use to
  send the email.}

  \item{user}{email account from which the email is sent.}

  \item{pwd}{password of \code{user} if required.}

  \item{host}{smtp sever.}

  \item{port}{the port on which the mail server runs. The
  default port is 25. However, you must use appropriate
  port if you use encryption.}

  \item{encryption}{encryption type. Supported type are
  "tls", "starttls" and "ssl".}
}
\description{
  Function \code{sendEmail} offers a convenient way for
  sending emails using package "dclong.jmail" if you are
  not familiar with Java.
}

