#' @title Get and Set Information about the Sender and Receivers
#' @description The methods/wrapper functions listed here get and set 
#' information about the sender and receivers. There are for R users 
#' who are not familiar with Java. These wrapper functions are made 
#' convenient to use by R users. 
#' For example the \code{getTo} method of JavaMailer returns
#' an array of Address objects in Java while the corresponding wrappper function \code{getTo}
#' returns a string vector (whose elements are string representation of corresponding elements of the array 
#' of Address objects).
#' 
#' @param jm an instance of JavaMailer, i.e. an objecet of either JavaMailSender of 
#' JavaMailReceiver. 


#' @param bcc a string vector containing email addresses of recipients of type "BCC".
#' @export
#' @rdname address
addBcc = function(jm,bcc){
    jm$addBcc(rJava::.jarray(bcc))
}
#' @param cc a string vector containing email addresses of recipients of type "CC".
#' @export
#' @rdname address
addCc = function(jm,cc){
    jm$addCc(rJava::.jarray(cc))
}
#' @param from a string vector containing information (email addresses) of the sender.
#' @export
#' @rdname address
addFrom = function(jm,from){
    jm$addFrom(rJava::.jarray(from))
}
#' @param to a string vector containin email addresses of recipients of type "TO".
#' @export
#' @rdname address
addTo = function(jm,to){
    jm$addTo(rJava::.jarray(to))
}
#' @export
#' @rdname address
#' @return a string vector of email addresses.
getAllRecipients = function(jm){
    addresses = jm$getAllRecipients()
    addresses = jm$addressesToStrings(addresses)
    rJava::.jevalArray(addresses)
}
#' @export
#' @rdname address
#' @return a string vector of email addresses.
getBcc = function(jm){
    addresses = jm$getBcc()
    addresses = jm$addressesToStrings(addresses)
    rJava::.jevalArray(addresses)
}
#' @export 
#' @rdname address
#' @return a string vector of email addresses.
getCc = function(jm){
    addresses = jm$getCc()
    addresses = jm$addressesToStrings(addresses)
    rJava::.jevalArray(addresses)
}
#' @export
#' @rdname address
#' @return a string vector of email addresses.
getFrom = function(jm){
    addresses = jm$getFrom()
    addresses = jm$addressesToStrings(addresses)
    rJava::.jevalArray(addresses)
}
#' @export
#' @rdname address
getReplyTo = function(jm){
    addresses = jm$getReplyTo()
    addresses = jm$addressesToStrings(addresses)
    rJava::.jevalArray(addresses)
}
#' @export
#' @rdname address
#' @return value of the RFC 822 "Sender" header field.
getSender = function(jm){
    ad = jm$getSender()
    jm$addressToString(ad)
}
#' @export
#' @rdname address
#' @return a string vector containing email addresses of recipients of type "TO".
getTo = function(jm){
    addresses = jm$getTo()
    addresses = jm$addressesToStrings(addresses)
    rJava::.jevalArray(addresses)
}
#' @export
#' @rdname address
#' @return a boolean value indicate whether the operation succeed or not.
setBcc = function(jm,bcc){
    jm$setBcc(rJava::.jarray(bcc))
}
#' @export
#' @rdname address
#' @return a boolean value indicate whether the operation succeed or not.
setCc = function(jm,cc){
    jm$setCc(rJava::.jarray(cc))
}
#' @export
#' @rdname address
#' @return a boolean value indicate whether the operation succeed or not.
setFrom = function(jm,from){
    jm$setFrom(from)
}
#' @export 
#' @rdname address
#' @return a boolean value indicate whether the operation succeed or not.
setTo = function(jm,to){
    jm$setTo(rJava::.jarray(to))
}




