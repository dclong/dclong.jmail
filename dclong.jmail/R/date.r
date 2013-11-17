#' @title Get Sent and Received Date of the Email
#' @description The method/wrapper function \code{getReceivedDate} 
#' get the received date of the email, and the method/wrapper function
#' \code{getSentDate} get the sent date of the email.
#' @inheritParams addBcc
#' @export
#' @rdname date
#' @return the string representation of the received date.
getReceivedDate = function(jm){
    jm$getReceivedDate()$toString()
}
#' @export
#' @rdname date
#' @return the string representation of the sent date. 
getSentDate = function(jm){
    jm$getSentDate()$toString()
}
