library(randomForest)
library(parallel)
test <- read.csv("~/play/conway/test.csv")

x <- test[,2:402]
retval = data.frame(id=test[,1])

for(i in 403:802) {
  print(paste("loop", i))

  ptm <- proc.time()

  infile <- paste0("rf.stop.",i,".RData")
  load(infile)

  y <- predict(md, newdata=x)

  idx <- i - 402
  retval[[paste("start.", idx)]] <- y
}

write.csv(retval, file="submission.csv", row.names=FALSE)
