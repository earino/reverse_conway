library(randomForest)
library(parallel)
train <- read.csv("~/play/conway/train.csv")

ntrees <- 36
x <- train[,2:402]
nproc <- detectCores() - 2
for(i in 403:802) {
  print(paste("loop", i))
  ptm <- proc.time()

  y <- as.factor(train[,i])

  mds <- mclapply(rep(ntrees/nproc,nproc),
                    function(ntree) randomForest(x,y,ntree=ntree),
                    mc.cores = nproc)

  print(mds)

  md <- do.call("combine", mds)

  outfile <- paste0("rf.stop.",i,".RData")
  save(md, file = outfile)
  print(proc.time() - ptm)
}
