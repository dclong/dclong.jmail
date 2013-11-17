\name{addBcc}
\alias{addBcc}
\alias{addCc}
\alias{addFrom}
\alias{addTo}
\alias{getAllRecipients}
\alias{getBcc}
\alias{getCc}
\alias{getFrom}
\alias{getReplyTo}
\alias{getSender}
\alias{getTo}
\alias{setBcc}
\alias{setCc}
\alias{setFrom}
\alias{setTo}
\title{Get and Set Information about the Sender and Receivers}
\usage{
  addBcc(jm, bcc)

  addCc(jm, cc)

  addFrom(jm, from)

  addTo(jm, to)

  getAllRecipients(jm)

  getBcc(jm)

  getCc(jm)

  getFrom(jm)

  getReplyTo(jm)

  getSender(jm)

  getTo(jm)

  setBcc(jm, bcc)

  setCc(jm, cc)

  setFrom(jm, from)

  setTo(jm, to)
}
\arguments{
  \item{jm}{an instance of JavaMailer, i.e. an objecet of
  either JavaMailSender of JavaMailReceiver.}

  \item{bcc}{a string vector containing email addresses of
  recipients of type "BCC".}

  \item{cc}{a string vector containing email addresses of
  recipients of type "CC".}

  \item{from}{a string vector containing information (email
  addresses) of the sender.}

  \item{to}{a string vector containin email addresses of
  recipients of type "TO".}
}
\value{
  a string vector of email addresses.

  a string vector of email addresses.

  a string vector of email addresses.

  a string vector of email addresses.

  value of the RFC 822 "Sender" header field.

  a string vector containing email addresses of recipients
  of type "TO".

  a boolean value indicate whether the operation succeed or
  not.

  a boolean value indicate whether the operation succeed or
  not.

  a boolean value indicate whether the operation succeed or
  not.

  a boolean value indicate whether the operation succeed or
  not.
}
\description{
  The methods/wrapper functions listed here get and set
  information about the sender and receivers. There are for
  R users who are not familiar with Java. These wrapper
  functions are made convenient to use by R users. For
  example the \code{getTo} method of JavaMailer returns an
  array of Address objects in Java while the corresponding
  wrappper function \code{getTo} returns a string vector
  (whose elements are string representation of
  corresponding elements of the array of Address objects).
}

