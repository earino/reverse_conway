library(randomForest)
library(parallel)
test <- read.csv("~/play/conway/test.csv")

x <- test[,2:402]
retval <- data.frame(matrix(data=0, ncol = 401, nrow = 50000))
colnames(retval) <- c("id", sapply(1:400,function(x) paste0("start.", x)))
retval$id <- test[,1]

for(i in 3:402) {
  print(paste("loop", i))

  ptm <- proc.time()

  infile <- paste0("rf.stop.",i,".RData")
  while(! file.exists(infile)) {
    print(paste("waiting for ", infile))
    Sys.sleep(5)
  }
  Sys.sleep(5)
  load(infile)

  y <- predict(md, newdata=x)

  idx <- i - 2
  retval[[paste0("start.", idx)]] <- y
  write.csv(retval, file="submission.csv", row.names=FALSE)
  print(proc.time() - ptm)
}

write.csv(retval, file="submission.csv", row.names=FALSE)
