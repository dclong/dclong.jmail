\name{buildMultipart}
\alias{buildMultipart}
\alias{getHtmlBody}
\alias{getPlainBody}
\alias{getSubject}
\alias{setContent}
\alias{setHtmlBody}
\alias{setPlainBody}
\alias{setSubject}
\alias{setText}
\title{Get and Set the Content of Email Message}
\usage{
  buildMultipart(jm, body, attachment)

  getHtmlBody(jm)

  getPlainBody(jm)

  getSubject(jm)

  setContent(jm, mp)

  setHtmlBody(jm, body)

  setPlainBody(jm, body)

  setSubject(jm, subject)

  setText(jm, body)
}
\arguments{
  \item{body}{a text email body.}

  \item{attachment}{a vector containing paths of files to
  be attached.}

  \item{mp}{an object of Multipart which is returned by
  calling the method/wrapper function
  \code{buildMultipart}.}

  \item{subject}{the email subject.}

  \item{jm}{an instance of JavaMailer, i.e. an objecet of
  either JavaMailSender of JavaMailReceiver.}
}
\value{
  an object of Multipart which is intend to be used by the
  method/wrapper function \code{setContent}.

  get the email body in HTML if the message was sent in
  HTML format. An empty string is returned if the email was
  not sent in HTML format.

  the email body in plain text format.

  the email subject.

  a boolean value indicate whether the operation succeed or
  not.

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
  Function listed here helps to create plain text email,
  HTML email, email with attachments and also to query
  subject and body (plain text an HTML) of the email.
}
\details{
  The method/wrapper function \code{buildMultipart}
  combines email body and attachments into an object of
  Multipart, which can be set as the email content by the
  method/wrapper function \code{setContent}. The
  method/wrapper function \code{setText} is equivalent to
  the function \code{setPlainBody}. Other wrapper functions
  are self-explaining.
}

