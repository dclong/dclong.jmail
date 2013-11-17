#' @title Some Methods of the JavaMailReceiver Class
#' @description The methods/wrapper functions listed here are specific
#' to the JavaMailReceiver class. 
#' @details The method/wrapper function \code{openFolder} opens a 
#' specified folder. Folders available depends on different protocols you use.
#' The method/wrapper function \code{closeFolder} close the opened folder.
#' The method/wrapper function \code{fetchAllEmails} fetches all emails 
#' from the opened folder and buffer them. 
#' The method/wrapper function \code{fetchEmails} fetches emails with 
#' specified email numbers (1-based) and buffer them. 
#' Previously fetched emails (if any) are erased from the buffer after 
#' calling these two fetcher methods/wrapper functions. 
#' The method/wrapper function \code{getBufferedEmailsCount} the 
#' number of buffered emails. 
#' The method/wrapper function \code{selectBufferedEmail} select a buffered 
#' email for further operations, e.g., querying email body, downloading attachments, etc.
#' The searcher methods/wrapper functions (methods/wrapper functions start with 
#' "search"), searches emails with the specified flag and buffer them. 
#' Previous emails in the buffered are earased after calling searcher
#' methods/wrapper functions.

#' @param jmr an object of the JavaMailReceiver object.
#' @param expunge logical; expunge deleted messages if TRUE. 
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
closeFolder = function(jmr,expunge=FALSE){
    jmr$closeFolder(expunge)
}
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
fetchAllEmails = function(jmr){
    jmr$fetchAllEmails()
}
#' @param emailNumber an integer or an integer vector representing email numbers (1-based).
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
fetchEmails = function(jmr,emailNumber){
    emailNumber = as.integer(emailNumber)
    jmr$fetchEmails(rJava::.jarray(emailNumber))
}
#' @return the number of buffered emails.
#' @export
#' @rdname jmr
getBufferedEmailsCount = function(jmr){
    jmr$getBufferedEmailsCount()
}
#' @return the number of deleted emails.
#' @export
#' @rdname jmr
getDeletedEmailsCount = function(jmr){
    jmr$getDeletedEmailsCount()
}
#' @return the number of new emails.
#' @export
#' @rdname jmr
getNewEmailsCount = function(jmr){
    jmr$getNewEmailsCount()
}
#' @return the number of unread emails.
#' @export
#' @rdname jmr
getUnreadEmailsCount= function(jmr){
    jmr$getUnreadEmailsCount()
}
#' @param folder the name of the folder to be opened. 
#' @param access integer; possible values are 1 and 2 which correspond to 
#' read only and read/write access. 
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
openFolder = function(jmr,folder,access){
    access = as.integer(access)
    jmr$openFolder(folder,access)
}
#' @param deleted logical; If TRUE, deleted emails are put to the buffer; 
#' otherwise, non-deleted emails are put to the buffer.
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
searchDeletedEmails = function(jmr,deleted){
    jmr$searchDeletedEmails(deleted)
}
#' @param draft logical; If TRUE, draft emails are put to the buffer; 
#' otherwise, non-draft emails are put to the buffer.
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
searchDraftEmails = function(jmr,draft){
    jmr$searchDraftEmails(draft)
}
#' @param flagged logical; If TRUE, flagged emails are put to the buffer;
#' otherwise, non-flagged emails are put to the buffer.
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
searchFlaggedEmails = function(jmr,flagged){
    jmr$searchFlaggedEmails(flagged)
}
#' @param read logical; If TRUE, read emails are put to the buffer;
#' otherwise, unread emails are put to the buffer.
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
searchReadEmails = function(jmr,read){
    jmr$searchReadEmails(read)
}
#' @param replied logical; If TRUE, replied emails are put to the buffer;
#' otherwise, non-replied emails are put the buffer.
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
searchRepliedEmails = function(jmr,replied){
    jmr$searchRepliedEmails(replied)
}
#' @param index 1-based index of the email in the buffer array.
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
selectBufferedEmail = function(jmr,index){
    index = as.integer(index - 1)
    jmr$selectBufferedEmail(index)
}
#' @param delete logical; If TRUE, delete the selected email or 
#' buffered emails; otherwise, undeleted the selected email or buffered emails.
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
deleteSelectedEmail = function(jmr,delete){
    jmr$deleteSelectedEmail(delete)
}
#' @return a boolean value indicate whether the operation succeed.
#' @export
#' @rdname jmr
deleteBufferedEmails = function(jmr,delete){
    jmr$deleteBufferedEmails(delete)
}
#' @param flag character; a flag.  
#' Support flags are "ANSWERED" (the message has been answered), 
#' "DELETED" (the message is marked deleted), 
#' "DRAFT" (the message is a draft), 
#' "FLAGGED" (the message is flagged), 
#' "RECENT" (the message is recent), 
#' "SEEN" (the message is seen) and 
#' "USER" (a special flag that indicate the opened folder support user defined flags).
#' @return a boolean value indicate whether the operation succeed.
#' @param value logical; If TRUE, the flag is set to be TRUE, vice versa.
#' @export
#' @rdname jmr
setFlags = function(jmr,flag,value){
    jmr$setFlags(rJava::.jnew('javax.mail.Flags',flag),value)
}
