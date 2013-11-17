#' @title Downlaod Attachments
#' @description The methods/wrapper functions listed here helps to download attachments
#' from emails. 
#' @details You must first scan attachments using the method/wrapper function \code{scanAttachments} 
#' in an email before you can download them using the method/wrapper function \code{downloadAttachments}. 
#' Since the names of downloaded attachments depends on the directory you save them,
#' you must specify a directory to save the attachments when you scan them.
#' To avoid conflict of file names, the actually names of downloaded attachments 
#' might be changed automatically by adding suffix "(n)".
#' You can query the original names of attachments in the email using the method/wrapper function
#' \code{getOriginalAttachmentNames} after you have scaned them.
#' To get the actual names of the attachments to be saved on disk, 
#' you can use the method/wrapper function \code{getLegalAttachmentNames}.
#' @inheritParams addBcc
#' @param dir the path of the directory where you want to download attachments.
#' @export
#' @rdname attachment
#' @return a boolean value indicate whether the operation succeed or not.
scanAttachments = function(jm,dir){
    jm$scanAttachments()
}
#' @export
#' @rdname attachment
#' @return a string vector containing legal path for the attachments.
getLegalAttachmentNames = function(jm){
    rJava::.jevalArray(jm$getLegalAttachmentNames())
}
#' @export
#' @rdname attachment
#' @return a string vector containing original names/path for the attachments.
getOriginalAttachmentNames = function(jm){
    rJava::.jevalArray(jm$getOriginalAttachmentNames())
}
#' @export
#' @rdname attachment
#' @return a boolean value indicate whether the operation succeed or not.
downloadAttachments = function(jm){
    jm$downloadAttachments()
}
