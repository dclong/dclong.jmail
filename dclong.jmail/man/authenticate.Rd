\name{authenticate}
\alias{authenticate}
\title{Connect to Mail Server}
\usage{
  authenticate(jm, user, pwd, host)
}
\arguments{
  \item{user}{the actual email account from which the email
  is sent.}

  \item{pwd}{the password of the email account
  \code{user}.}

  \item{jm}{an instance of JavaMailer, i.e. an objecet of
  either JavaMailSender of JavaMailReceiver.}

  \item{host}{the name of the SMTP server.}
}
\description{
  The method/wrapper function \code{authenticate} connect
  the mail server.
}
\details{
  If \code{jm} is a JavaMailSender object, this
  method/wrapper function connects to the SMTP server. If
  \code{jm} is a JavaMailReceiver object, this
  method/wrapper function connects to the POP3 or IMAP
  server.
}

