#' @title Get and Set the Content of Email Message
#' @description Function listed here helps to create plain text email, HTML email,
#' email with attachments and also to query subject and body (plain text an HTML) of the email.
#' @details The method/wrapper function \code{buildMultipart} combines email body and 
#' attachments into an object of Multipart, which can be set as the email content 
#' by the method/wrapper function \code{setContent}. The method/wrapper function \code{setText} 
#' is equivalent to the function \code{setPlainBody}. Other wrapper functions are self-explaining.
#' @inheritParams addBcc
#' @param body a text email body.
#' @param attachment a vector containing paths of files to be attached.
#' @export
#' @rdname mime
#' @return an object of Multipart which is intend 
#' to be used by the method/wrapper function \code{setContent}.
buildMultipart = function(jm,body, attachment){
    jm$buildMultipart(body,rJava::.jarray(attachment))
}
#' @export
#' @rdname mime
#' @return get the email body in HTML if the message was sent in HTML format. 
#' An empty string is returned if the email was not sent in HTML format.
getHtmlBody = function(jm){
    jm$getHtmlBody()
}
#' @export
#' @rdname mime
#' @return the email body in plain text format. 
getPlainBody = function(jm){
    jm$getPlainBody()
}
#' @export
#' @rdname mime
#' @return the email subject.
getSubject = function(jm){
    jm$getSubject()
}
#' @param mp an object of Multipart which is returned by calling the 
#' method/wrapper function \code{buildMultipart}.
#' @export
#' @rdname mime
#' @return a boolean value indicate whether the operation succeed or not.
setContent = function(jm,mp){
    jm$setContent(mp)
}
#' @export
#' @rdname mime
#' @return a boolean value indicate whether the operation succeed or not.
setHtmlBody = function(jm,body){
    jm$setContent(body,'text/html')
}
#' @export
#' @rdname mime
#' @return a boolean value indicate whether the operation succeed or not.
setPlainBody = function(jm,body){
    jm$setContent(body,'text/plain')
}
#' @param subject the email subject.
#' @export
#' @rdname mime
#' @return a boolean value indicate whether the operation succeed or not.
setSubject = function(jm,subject){
    jm$setSubject(subject)
}
#' @export 
#' @rdname mime
#' @return a boolean value indicate whether the operation succeed or not.
setText = function(jm,body){
    jm$setText(body)
}
