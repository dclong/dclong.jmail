#' @title Initialize Java Virtual Machine
#' @description Function \code{init} start the Java virtual machine,
#' and add necessary class paths to the Java virtual machine. 
#' Note that if you load this package, the initialization is taken care of 
#' automatically and there is no necessary to call this function manually.
#' Function \code{init} is for people who want to use this package 
#' without loading it. 
#' @export
init = function(){
    pkg = 'dclong.jmail'    
    system.file('java',package=pkg) -> path.java
    dir(path.java,pattern="*.jar",full.names=TRUE) -> jars
    if(length(jars)==0){
        packageStartupMessage(paste('For reason of copyright, the JavaMail APIs on which package "',pkg,'" depends is not distributed with it. Please follow the instructions below to solve this problem.\n',sep=""))
        packageStartupMessage('1. Download JavaMail APIs from Oracle at "http://www.oracle.com/technetwork/java/javamail/index.html.\n')
        packageStartupMessage('2. Uncompress the downloaded archive.\n')
        packageStartupMessage(paste('3. Copy "mail.jar" to the directory "',path.java,'".\n',sep=""))
        packageStartupMessage('4. Detach the package dclong.jmail using command detach(package:dclong.jmail).\n')
        packageStartupMessage(paste('5. Reload package "',pkg,'" and you are good to go.\n',sep=""))
        packageStartupMessage('If any error occus after you follow the above instructions, restart R and everything should be OK.\n')
        return
    }
    rJava::.jinit(c(jars,path.java))
}
