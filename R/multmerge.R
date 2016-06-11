multmerge <- function(mypath, fileEncoding = ""){
  filenames=list.files(path=mypath, full.names=TRUE)
  datalist = lapply(filenames,
                    function(x){read.csv(file=x,
                                         header=T,
                                         fileEncoding = fileEncoding)})
  Reduce(function(x,y) {rbind(x,y)}, datalist)
}
