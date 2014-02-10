library(randomForest)
library(parallel)
train <- read.csv("~/play/conway/train.csv")

ntrees <- 60
x <- train[,c(2,403:802)]
nproc <- detectCores() - 2
for(i in 3:402) {
  print(paste("loop", i))
  ptm <- proc.time()

  y <- as.factor(train[,i])

  mds <- mclapply(rep(ntrees/nproc,nproc),
                    function(ntree) randomForest(x,y,ntree=ntree,mtry=100),
                    mc.cores = nproc)

  print(mds)

  md <- do.call("combine", mds)

  outfile <- paste0("rf.stop.",i,".RData")
  save(md, file = outfile)
  print(proc.time() - ptm)
}
