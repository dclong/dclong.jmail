#' @title Send Email 
#' @description Function \code{sendEmail} offers a convenient way for sending emails using package "dclong.jmail" if you are 
#' not familiar with Java. 
#' @param subject email subject, empty string by default.
#' @param body email body, empty string by default.
#' @param attachment a string vector containing path of files to be attached.
#' @param to a string vector containing email addresses of type "To" recipients.
#' @param cc a string vector containing email addresses of type "Cc" recipients.
#' @param bcc a string vector containing email addresses of type "Bcc" recipients. 
#' @param from information about the sender. This can be different from the actual email address which you use to send the email.
#' @param user email account from which the email is sent.
#' @param pwd password of \code{user} if required.
#' @param host smtp sever. 
#' @param port the port on which the mail server runs. 
#' The default port is 25. However, you must use appropriate port if you use encryption.
#' @param encryption encryption type. Supported type are "tls", "starttls" and "ssl". 
#' @importFrom rJava .jarray
#' @export
sendEmail = function(subject, body, attachment, to, cc, bcc, from, user, pwd, host, port, encryption){
    port = as.integer(port)
    jms = jms.new(host=host,port=port,encryption=encryption)
    if(missing(subject)){
        subject = ""
    }
    if(missing(body)){
        body = ""
    }
    if(missing(pwd)){
        pwd = ""
    }
    bool = jms$setSubject(subject) 
    if(!bool){
        return(FALSE)
    }
    if(missing(attachment)){
        bool = jms$setText(body) 
        if(!bool){
            return(FALSE)
        }
    }else{
        mp = jms$buildMultipart(body,rJava::.jarray(attachment))
        bool = jms$setContent(mp) 
        if(!bool){
            return(FALSE)
        }
    }
    if(!missing(to)){
        bool = jms$setTo(rJava::.jarray(to)) 
        if(!bool){
            return(FALSE)
        }
    }
    if(!missing(cc)){
        bool = jms$setCc(rJava::.jarray(cc))
        if(!bool){
            return(FALSE)
        }
    }
    if(!missing(bcc)){
        bool = jms$setBcc(rJava::.jarray(bcc))
        if(!bool){
            return(FALSE)
        }
    }
    if(!missing(from)){
        bool = jms$setFrom(from)
        if(!bool){
            return(FALSE)
        }
    }
    if(missing(pwd)){
        bool = jms$authenticate(user)
        if(!bool){
            return(FALSE)
        }
    }else{
        bool = jms$authenticate(user,pwd)
        if(!bool){
            return(FALSE)
        }
    }
    jms$send()
}
