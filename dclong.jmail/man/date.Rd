\name{getReceivedDate}
\alias{getReceivedDate}
\alias{getSentDate}
\title{Get Sent and Received Date of the Email}
\usage{
  getReceivedDate(jm)

  getSentDate(jm)
}
\arguments{
  \item{jm}{an instance of JavaMailer, i.e. an objecet of
  either JavaMailSender of JavaMailReceiver.}
}
\value{
  the string representation of the received date.

  the string representation of the sent date.
}
\description{
  The method/wrapper function \code{getReceivedDate} get
  the received date of the email, and the method/wrapper
  function \code{getSentDate} get the sent date of the
  email.
}

