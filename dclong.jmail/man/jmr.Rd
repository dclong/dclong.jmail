\name{closeFolder}
\alias{closeFolder}
\alias{deleteBufferedEmails}
\alias{deleteSelectedEmail}
\alias{fetchAllEmails}
\alias{fetchEmails}
\alias{getBufferedEmailsCount}
\alias{getDeletedEmailsCount}
\alias{getNewEmailsCount}
\alias{getUnreadEmailsCount}
\alias{openFolder}
\alias{searchDeletedEmails}
\alias{searchDraftEmails}
\alias{searchFlaggedEmails}
\alias{searchReadEmails}
\alias{searchRepliedEmails}
\alias{selectBufferedEmail}
\alias{setFlags}
\title{Some Methods of the JavaMailReceiver Class}
\usage{
  closeFolder(jmr, expunge = FALSE)

  fetchAllEmails(jmr)

  fetchEmails(jmr, emailNumber)

  getBufferedEmailsCount(jmr)

  getDeletedEmailsCount(jmr)

  getNewEmailsCount(jmr)

  getUnreadEmailsCount(jmr)

  openFolder(jmr, folder, access)

  searchDeletedEmails(jmr, deleted)

  searchDraftEmails(jmr, draft)

  searchFlaggedEmails(jmr, flagged)

  searchReadEmails(jmr, read)

  searchRepliedEmails(jmr, replied)

  selectBufferedEmail(jmr, index)

  deleteSelectedEmail(jmr, delete)

  deleteBufferedEmails(jmr, delete)

  setFlags(jmr, flag, value)
}
\arguments{
  \item{jmr}{an object of the JavaMailReceiver object.}

  \item{expunge}{logical; expunge deleted messages if
  TRUE.}

  \item{emailNumber}{an integer or an integer vector
  representing email numbers (1-based).}

  \item{folder}{the name of the folder to be opened.}

  \item{access}{integer; possible values are 1 and 2 which
  correspond to read only and read/write access.}

  \item{deleted}{logical; If TRUE, deleted emails are put
  to the buffer; otherwise, non-deleted emails are put to
  the buffer.}

  \item{draft}{logical; If TRUE, draft emails are put to
  the buffer; otherwise, non-draft emails are put to the
  buffer.}

  \item{flagged}{logical; If TRUE, flagged emails are put
  to the buffer; otherwise, non-flagged emails are put to
  the buffer.}

  \item{read}{logical; If TRUE, read emails are put to the
  buffer; otherwise, unread emails are put to the buffer.}

  \item{replied}{logical; If TRUE, replied emails are put
  to the buffer; otherwise, non-replied emails are put the
  buffer.}

  \item{index}{1-based index of the email in the buffer
  array.}

  \item{delete}{logical; If TRUE, delete the selected email
  or buffered emails; otherwise, undeleted the selected
  email or buffered emails.}

  \item{flag}{character; a flag. Support flags are
  "ANSWERED" (the message has been answered), "DELETED"
  (the message is marked deleted), "DRAFT" (the message is
  a draft), "FLAGGED" (the message is flagged), "RECENT"
  (the message is recent), "SEEN" (the message is seen) and
  "USER" (a special flag that indicate the opened folder
  support user defined flags).}

  \item{value}{logical; If TRUE, the flag is set to be
  TRUE, vice versa.}
}
\value{
  a boolean value indicate whether the operation succeed.

  a boolean value indicate whether the operation succeed.

  a boolean value indicate whether the operation succeed.

  the number of buffered emails.

  the number of deleted emails.

  the number of new emails.

  the number of unread emails.

  a boolean value indicate whether the operation succeed.

  a boolean value indicate whether the operation succeed.

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
  The methods/wrapper functions listed here are specific to
  the JavaMailReceiver class.
}
\details{
  The method/wrapper function \code{openFolder} opens a
  specified folder. Folders available depends on different
  protocols you use. The method/wrapper function
  \code{closeFolder} close the opened folder. The
  method/wrapper function \code{fetchAllEmails} fetches all
  emails from the opened folder and buffer them. The
  method/wrapper function \code{fetchEmails} fetches emails
  with specified email numbers (1-based) and buffer them.
  Previously fetched emails (if any) are erased from the
  buffer after calling these two fetcher methods/wrapper
  functions. The method/wrapper function
  \code{getBufferedEmailsCount} the number of buffered
  emails. The method/wrapper function
  \code{selectBufferedEmail} select a buffered email for
  further operations, e.g., querying email body,
  downloading attachments, etc. The searcher
  methods/wrapper functions (methods/wrapper functions
  start with "search"), searches emails with the specified
  flag and buffer them. Previous emails in the buffered are
  earased after calling searcher methods/wrapper functions.
}

