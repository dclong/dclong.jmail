\name{isConnected}
\alias{close}
\alias{isConnected}
\alias{send}
\alias{setDebug}
\alias{setEncryption}
\alias{setFallback}
\alias{setHost}
\alias{setPort}
\alias{setSocketFactoryClass}
\title{Some Methods of the JavaMailSender Class}
\usage{
  isConnected(jms)

  close(jms)

  send(jms)

  setDebug(jms, debug)

  setEncryption(jms, encryption)

  setFallback(jms, fallback)

  setHost(jms, host)

  setPort(jms, port)

  setSocketFactoryClass(jms, sfc)
}
\arguments{
  \item{jms}{an object of the JavaMailSender class.}

  \item{debug}{logical; If TRUE, debug is enabled.}

  \item{encryption}{the encryption type. Supported types
  are "tls", "starttls" and "ssl".}

  \item{fallback}{logical; If TRUE, failure to create a
  socket using the specified socket factory class will
  cause the socket to be created using the java.net.Socket
  class. Defaults to true.}

  \item{host}{the name of the SMTP server.}

  \item{port}{the port on which he SMTP server runs.}

  \item{sfc}{logical; If TRUE, specifies the name of a
  class that implements the javax.net.SocketFactory
  interface. This class will be used to create SMTP
  sockets.}
}
\value{
  a boolean value indicate whether the connection to the
  SMTP server is valid.

  a boolean value indicate whether the operation succeed.

  a boolean value indicate whether the operation succeed.

  a boolean value indicate whether the operation succeed.

  a boolean value indicate whether the operation succeed.

  a boolean value indicate whether the operation succeed.

  a boolean value indicate whether the operation succeed.

  a boolean value indicate whether the operation succeed.

  a boolean value indicate whether the operation succeed.
}
\description{
  The methods/wrapper listed here are specific to the
  JavaMailSender class. The are related to the smtp server.
}
\details{
  The setter methods/wrapper functions set the
  corresponding properties of the connection to the mail
  server. The method/wrapper function \code{authenticate}
  connect to the SMTP server. The method/wrapper function
  \code{isConnected} check whether the connection to the
  mail server is valid. The method/wrapper function
  \code{close} close the connection to the mail server. The
  method/wrapper function \code{send} send out the email.
}

