#' @title Save Changes to Emails in the Folder
#' @description The method/wrapper function \code{saveChanges} save changes you
#' have made to emails in the folder before you exit the folder. 
#' You must open the folder as "Read/Write" in order to make changes to emails.
#' @inheritParams addBcc
#' @export
#' @rdname change
#' @return a boolean value indicate whether the operation succeed or not.
saveChanges = function(jm){
    jm$saveChanges()
}
