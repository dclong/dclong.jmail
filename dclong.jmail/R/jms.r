#' @title Some Methods of the JavaMailSender Class
#' @description The methods/wrapper listed here are specific to the JavaMailSender 
#' class. The are related to the smtp server.
#' @details The setter methods/wrapper functions set the corresponding 
#' properties of the connection to the mail server.
#' The method/wrapper function \code{authenticate} connect to the SMTP server. 
#' The method/wrapper function \code{isConnected} check whether the connection
#' to the mail server is valid.
#' The method/wrapper function \code{close} close the connection to the mail server.
#' The method/wrapper function \code{send} send out the email.
#' @param jms an object of the JavaMailSender class.
#' @importFrom rJava .jnull
#' @return a boolean value indicate whether the connection to the SMTP 
#' server is valid. 
#' @export
#' @rdname jms
isConnected = function(jms){
    jms$isConnected()
}
#' @return a boolean value indicate whether the operation succeed. 
#' @export
#' @rdname jms
close = function(jms){
    jms$close()
}
#' @return a boolean value indicate whether the operation succeed. 
#' @export
#' @rdname jms
send = function(jms){
    jms$send()
}
#' @param debug logical; If TRUE, debug is enabled.
#' @return a boolean value indicate whether the operation succeed. 
#' @export
#' @rdname jms
setDebug = function(jms,debug){
    jms$setDebug(debug)
}
#' @param encryption the encryption type. 
#' Supported types are "tls", "starttls" and "ssl".
#' @return a boolean value indicate whether the operation succeed. 
#' @export
#' @rdname jms
setEncryption = function(jms,encryption){
    jms$setEncryption(encryption)
}
#' @param fallback logical; 
#' If TRUE, failure to create a socket using the specified 
#' socket factory class will cause the socket to be created 
#' using the java.net.Socket class. Defaults to true.
#' @return a boolean value indicate whether the operation succeed. 
#' @export
#' @rdname jms
setFallback = function(jms,fallback){
    jms$setFallback(fallback)
}
#' @param host the name of the SMTP server.
#' @return a boolean value indicate whether the operation succeed. 
#' @export
#' @rdname jms
setHost = function(jms,host){
    jms$setHost(host)
}
#' @param port the port on which he SMTP server runs. 
#' @return a boolean value indicate whether the operation succeed. 
#' @export
#' @rdname jms
setPort = function(jms,port){
    port = as.integer(port)
    jms$setPort(port)
}
#' @param sfc logical; If TRUE, specifies the name of a class 
#' that implements the javax.net.SocketFactory interface. 
#' This class will be used to create SMTP sockets.
#' @return a boolean value indicate whether the operation succeed. 
#' @export
#' @rdname jms
setSocketFactoryClass= function(jms,sfc){
    jms$setSocketFactoryClass(sfc)
}
