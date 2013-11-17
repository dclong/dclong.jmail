
#' @noRd
.onLoad = function(lib,pkg){
    system.file('java',package=pkg,lib.loc=lib) -> path.java
    dir(path.java,pattern="*.jar") -> jars
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
    rJava::.jpackage(name=pkg,lib.loc=lib)
}
