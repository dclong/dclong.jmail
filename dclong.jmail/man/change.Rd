\name{saveChanges}
\alias{saveChanges}
\title{Save Changes to Emails in the Folder}
\usage{
  saveChanges(jm)
}
\arguments{
  \item{jm}{an instance of JavaMailer, i.e. an objecet of
  either JavaMailSender of JavaMailReceiver.}
}
\value{
  a boolean value indicate whether the operation succeed or
  not.
}
\description{
  The method/wrapper function \code{saveChanges} save
  changes you have made to emails in the folder before you
  exit the folder. You must open the folder as "Read/Write"
  in order to make changes to emails.
}

