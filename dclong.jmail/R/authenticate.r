#' @title Connect to Mail Server
#' @description The method/wrapper function \code{authenticate} connect 
#' the mail server.
#' @details If \code{jm} is a JavaMailSender object, this method/wrapper function
#' connects to the SMTP server. If \code{jm} is a JavaMailReceiver object, 
#' this method/wrapper function connects to the POP3 or IMAP server. 
#' @inheritParams addBcc 
#' @inheritParams setHost
#' @param user the actual email account from which the email is sent.
#' @param pwd the password of the email account \code{user}.
#' @export
authenticate = function(jm,user,pwd,host){
    if(missing(user)){
        user = rJava::.jnull('java/lang/String')
    }
    if(missing(pwd)){
        pwd = rJava::.jnull('java/lang/String')
    }
    jclass = attributes(jm)$jclass
    if(jclass=='dclong/net/JavaMailSender'){
        if(missing(host)){
            return(jm$authenticate(user,pwd))
        }
        jm$setHost(host)
        return(jm$authenticate(user,pwd))
    }
    if(jclass=='dclong/net/JavaMailReceiver'){
        if(missing(host)){
            host = rJava::.jnull('java/lang/String')
        }
        return(jm$authenticate(host,user,pwd))
    } 
    return(FALSE)
}
