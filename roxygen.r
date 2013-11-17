#!/usr/bin/Rscript
library(roxygen2)
roxygenize('dclong.jmail')
f = 'dclong.jmail/R/.Rhistory'
if(file.exists(f)){
    file.remove(f)
}
# system('rm dclong.jmail/R/.Rhistory')

