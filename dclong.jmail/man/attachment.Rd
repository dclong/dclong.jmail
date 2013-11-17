\name{scanAttachments}
\alias{downloadAttachments}
\alias{getLegalAttachmentNames}
\alias{getOriginalAttachmentNames}
\alias{scanAttachments}
\title{Downlaod Attachments}
\usage{
  scanAttachments(jm, dir)

  getLegalAttachmentNames(jm)

  getOriginalAttachmentNames(jm)

  downloadAttachments(jm)
}
\arguments{
  \item{dir}{the path of the directory where you want to
  download attachments.}

  \item{jm}{an instance of JavaMailer, i.e. an objecet of
  either JavaMailSender of JavaMailReceiver.}
}
\value{
  a boolean value indicate whether the operation succeed or
  not.

  a string vector containing legal path for the
  attachments.

  a string vector containing original names/path for the
  attachments.

  a boolean value indicate whether the operation succeed or
  not.
}
\description{
  The methods/wrapper functions listed here helps to
  download attachments from emails.
}
\details{
  You must first scan attachments using the method/wrapper
  function \code{scanAttachments} in an email before you
  can download them using the method/wrapper function
  \code{downloadAttachments}. Since the names of downloaded
  attachments depends on the directory you save them, you
  must specify a directory to save the attachments when you
  scan them. To avoid conflict of file names, the actually
  names of downloaded attachments might be changed
  automatically by adding suffix "(n)". You can query the
  original names of attachments in the email using the
  method/wrapper function \code{getOriginalAttachmentNames}
  after you have scaned them. To get the actual names of
  the attachments to be saved on disk, you can use the
  method/wrapper function \code{getLegalAttachmentNames}.
}

