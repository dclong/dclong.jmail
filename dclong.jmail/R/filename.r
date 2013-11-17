#' @title Other Operations on Emails
#' @description Get the filename associated with this Message.
#' @details Returns the value of the "filename" parameter from the "Content-Disposition" header field of this message. 
#' If it's not available, returns the value of the "name" parameter from the "Content-Type" header field of this BodyPart. 
#' Returns null if both are absent.  
#' 
#' If the mail.mime.encodefilename System property is set to true, 
#' the MimeUtility.decodeText method will be used to decode the filename. 
#' While such encoding is not supported by the MIME spec, 
#' many mailers use this technique to support non-ASCII characters in filenames. 
#' The default value of this property is false.
#' @inheritParams addBcc
#' @export
#' @rdname filename
#' @return the file name associated with the message.
getFileName = function(jm){
    jm$getFileName()
}
