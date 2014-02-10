library(randomForest)
library(parallel)
ntrees <- 120
nproc <- detectCores() - 2 
train <- read.csv("~/play/conway/train.csv")
ptm <- proc.time()

y <- as.factor(train[,c("start.1")])
# calculating for start.1
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.1.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.2")])
# calculating for start.2
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.2.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.3")])
# calculating for start.3
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.3.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.4")])
# calculating for start.4
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.4.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.5")])
# calculating for start.5
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.5.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.6")])
# calculating for start.6
x <- train[,c("delta", "stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.6.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.7")])
# calculating for start.7
x <- train[,c("delta", "stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.7.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.8")])
# calculating for start.8
x <- train[,c("delta", "stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.8.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.9")])
# calculating for start.9
x <- train[,c("delta", "stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.9.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.10")])
# calculating for start.10
x <- train[,c("delta", "stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.10.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.11")])
# calculating for start.11
x <- train[,c("delta", "stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.11.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.12")])
# calculating for start.12
x <- train[,c("delta", "stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.12.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.13")])
# calculating for start.13
x <- train[,c("delta", "stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.13.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.14")])
# calculating for start.14
x <- train[,c("delta", "stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.14.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.15")])
# calculating for start.15
x <- train[,c("delta", "stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.15.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.16")])
# calculating for start.16
x <- train[,c("delta", "stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.16.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.17")])
# calculating for start.17
x <- train[,c("delta", "stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.17.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.18")])
# calculating for start.18
x <- train[,c("delta", "stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.18.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.19")])
# calculating for start.19
x <- train[,c("delta", "stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.19.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.20")])
# calculating for start.20
x <- train[,c("delta", "stop.16","stop.17","stop.18","stop.19","stop.20","stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.16","stop.17","stop.18","stop.19","stop.20","stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.20.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.21")])
# calculating for start.21
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.21.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.22")])
# calculating for start.22
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.22.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.23")])
# calculating for start.23
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.23.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.24")])
# calculating for start.24
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.24.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.25")])
# calculating for start.25
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.25.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.26")])
# calculating for start.26
x <- train[,c("delta", "stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.26.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.27")])
# calculating for start.27
x <- train[,c("delta", "stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.27.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.28")])
# calculating for start.28
x <- train[,c("delta", "stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.28.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.29")])
# calculating for start.29
x <- train[,c("delta", "stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.29.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.30")])
# calculating for start.30
x <- train[,c("delta", "stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.30.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.31")])
# calculating for start.31
x <- train[,c("delta", "stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.31.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.32")])
# calculating for start.32
x <- train[,c("delta", "stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.32.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.33")])
# calculating for start.33
x <- train[,c("delta", "stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.33.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.34")])
# calculating for start.34
x <- train[,c("delta", "stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.34.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.35")])
# calculating for start.35
x <- train[,c("delta", "stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.35.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.36")])
# calculating for start.36
x <- train[,c("delta", "stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.36.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.37")])
# calculating for start.37
x <- train[,c("delta", "stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.37.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.38")])
# calculating for start.38
x <- train[,c("delta", "stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.38.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.39")])
# calculating for start.39
x <- train[,c("delta", "stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.39.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.40")])
# calculating for start.40
x <- train[,c("delta", "stop.16","stop.17","stop.18","stop.19","stop.20","stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.16","stop.17","stop.18","stop.19","stop.20","stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.40.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.41")])
# calculating for start.41
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.41.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.42")])
# calculating for start.42
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.42.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.43")])
# calculating for start.43
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.43.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.44")])
# calculating for start.44
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.44.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.45")])
# calculating for start.45
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.45.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.46")])
# calculating for start.46
x <- train[,c("delta", "stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.46.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.47")])
# calculating for start.47
x <- train[,c("delta", "stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.47.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.48")])
# calculating for start.48
x <- train[,c("delta", "stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.48.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.49")])
# calculating for start.49
x <- train[,c("delta", "stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.49.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.50")])
# calculating for start.50
x <- train[,c("delta", "stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.50.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.51")])
# calculating for start.51
x <- train[,c("delta", "stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.51.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.52")])
# calculating for start.52
x <- train[,c("delta", "stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.52.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.53")])
# calculating for start.53
x <- train[,c("delta", "stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.53.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.54")])
# calculating for start.54
x <- train[,c("delta", "stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.54.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.55")])
# calculating for start.55
x <- train[,c("delta", "stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.55.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.56")])
# calculating for start.56
x <- train[,c("delta", "stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.56.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.57")])
# calculating for start.57
x <- train[,c("delta", "stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.57.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.58")])
# calculating for start.58
x <- train[,c("delta", "stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.58.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.59")])
# calculating for start.59
x <- train[,c("delta", "stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.59.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.60")])
# calculating for start.60
x <- train[,c("delta", "stop.16","stop.17","stop.18","stop.19","stop.20","stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.16","stop.17","stop.18","stop.19","stop.20","stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.60.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.61")])
# calculating for start.61
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.61.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.62")])
# calculating for start.62
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.62.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.63")])
# calculating for start.63
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.63.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.64")])
# calculating for start.64
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.64.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.65")])
# calculating for start.65
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.65.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.66")])
# calculating for start.66
x <- train[,c("delta", "stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.66.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.67")])
# calculating for start.67
x <- train[,c("delta", "stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.67.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.68")])
# calculating for start.68
x <- train[,c("delta", "stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.68.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.69")])
# calculating for start.69
x <- train[,c("delta", "stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.69.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.70")])
# calculating for start.70
x <- train[,c("delta", "stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.70.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.71")])
# calculating for start.71
x <- train[,c("delta", "stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.71.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.72")])
# calculating for start.72
x <- train[,c("delta", "stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.72.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.73")])
# calculating for start.73
x <- train[,c("delta", "stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.73.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.74")])
# calculating for start.74
x <- train[,c("delta", "stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.74.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.75")])
# calculating for start.75
x <- train[,c("delta", "stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.75.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.76")])
# calculating for start.76
x <- train[,c("delta", "stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.76.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.77")])
# calculating for start.77
x <- train[,c("delta", "stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.77.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.78")])
# calculating for start.78
x <- train[,c("delta", "stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.78.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.79")])
# calculating for start.79
x <- train[,c("delta", "stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.79.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.80")])
# calculating for start.80
x <- train[,c("delta", "stop.16","stop.17","stop.18","stop.19","stop.20","stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.16","stop.17","stop.18","stop.19","stop.20","stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.80.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.81")])
# calculating for start.81
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.81.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.82")])
# calculating for start.82
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.82.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.83")])
# calculating for start.83
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.83.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.84")])
# calculating for start.84
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.84.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.85")])
# calculating for start.85
x <- train[,c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.1","stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.85.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.86")])
# calculating for start.86
x <- train[,c("delta", "stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.2","stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.86.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.87")])
# calculating for start.87
x <- train[,c("delta", "stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.3","stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.87.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.88")])
# calculating for start.88
x <- train[,c("delta", "stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.4","stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.88.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.89")])
# calculating for start.89
x <- train[,c("delta", "stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.5","stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.89.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.90")])
# calculating for start.90
x <- train[,c("delta", "stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.6","stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.90.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.91")])
# calculating for start.91
x <- train[,c("delta", "stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.7","stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.91.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.92")])
# calculating for start.92
x <- train[,c("delta", "stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.8","stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.92.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.93")])
# calculating for start.93
x <- train[,c("delta", "stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.9","stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.93.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.94")])
# calculating for start.94
x <- train[,c("delta", "stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.10","stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.94.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.95")])
# calculating for start.95
x <- train[,c("delta", "stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.11","stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.95.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.96")])
# calculating for start.96
x <- train[,c("delta", "stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.12","stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.96.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.97")])
# calculating for start.97
x <- train[,c("delta", "stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.13","stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.97.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.98")])
# calculating for start.98
x <- train[,c("delta", "stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.14","stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.98.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.99")])
# calculating for start.99
x <- train[,c("delta", "stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.15","stop.16","stop.17","stop.18","stop.19","stop.20","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.99.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.100")])
# calculating for start.100
x <- train[,c("delta", "stop.16","stop.17","stop.18","stop.19","stop.20","stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.16","stop.17","stop.18","stop.19","stop.20","stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.100.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.101")])
# calculating for start.101
x <- train[,c("delta", "stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.21","stop.22","stop.23","stop.24","stop.25","stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.101.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.102")])
# calculating for start.102
x <- train[,c("delta", "stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.102.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.103")])
# calculating for start.103
x <- train[,c("delta", "stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.103.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.104")])
# calculating for start.104
x <- train[,c("delta", "stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.104.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.105")])
# calculating for start.105
x <- train[,c("delta", "stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.21","stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.105.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.106")])
# calculating for start.106
x <- train[,c("delta", "stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.22","stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.106.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.107")])
# calculating for start.107
x <- train[,c("delta", "stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.23","stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.107.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.108")])
# calculating for start.108
x <- train[,c("delta", "stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.24","stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.108.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.109")])
# calculating for start.109
x <- train[,c("delta", "stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.25","stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.109.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.110")])
# calculating for start.110
x <- train[,c("delta", "stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.26","stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.110.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.111")])
# calculating for start.111
x <- train[,c("delta", "stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.27","stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.111.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.112")])
# calculating for start.112
x <- train[,c("delta", "stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.28","stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.112.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.113")])
# calculating for start.113
x <- train[,c("delta", "stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.29","stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.113.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.114")])
# calculating for start.114
x <- train[,c("delta", "stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.30","stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.114.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.115")])
# calculating for start.115
x <- train[,c("delta", "stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.31","stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.115.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.116")])
# calculating for start.116
x <- train[,c("delta", "stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.32","stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.116.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.117")])
# calculating for start.117
x <- train[,c("delta", "stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.33","stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.117.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.118")])
# calculating for start.118
x <- train[,c("delta", "stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.34","stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.118.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.119")])
# calculating for start.119
x <- train[,c("delta", "stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.35","stop.36","stop.37","stop.38","stop.39","stop.40","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.119.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.120")])
# calculating for start.120
x <- train[,c("delta", "stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.36","stop.37","stop.38","stop.39","stop.40","stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.120.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.121")])
# calculating for start.121
x <- train[,c("delta", "stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.41","stop.42","stop.43","stop.44","stop.45","stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.121.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.122")])
# calculating for start.122
x <- train[,c("delta", "stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.122.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.123")])
# calculating for start.123
x <- train[,c("delta", "stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.123.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.124")])
# calculating for start.124
x <- train[,c("delta", "stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.124.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.125")])
# calculating for start.125
x <- train[,c("delta", "stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.41","stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.125.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.126")])
# calculating for start.126
x <- train[,c("delta", "stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.42","stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.126.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.127")])
# calculating for start.127
x <- train[,c("delta", "stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.43","stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.127.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.128")])
# calculating for start.128
x <- train[,c("delta", "stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.44","stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.128.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.129")])
# calculating for start.129
x <- train[,c("delta", "stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.45","stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.129.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.130")])
# calculating for start.130
x <- train[,c("delta", "stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.46","stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.130.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.131")])
# calculating for start.131
x <- train[,c("delta", "stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.47","stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.131.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.132")])
# calculating for start.132
x <- train[,c("delta", "stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.48","stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.132.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.133")])
# calculating for start.133
x <- train[,c("delta", "stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.49","stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.133.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.134")])
# calculating for start.134
x <- train[,c("delta", "stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.50","stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.134.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.135")])
# calculating for start.135
x <- train[,c("delta", "stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.51","stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.135.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.136")])
# calculating for start.136
x <- train[,c("delta", "stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.52","stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.136.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.137")])
# calculating for start.137
x <- train[,c("delta", "stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.53","stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.137.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.138")])
# calculating for start.138
x <- train[,c("delta", "stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.54","stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.138.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.139")])
# calculating for start.139
x <- train[,c("delta", "stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.55","stop.56","stop.57","stop.58","stop.59","stop.60","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.139.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.140")])
# calculating for start.140
x <- train[,c("delta", "stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.56","stop.57","stop.58","stop.59","stop.60","stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.140.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.141")])
# calculating for start.141
x <- train[,c("delta", "stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.61","stop.62","stop.63","stop.64","stop.65","stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.141.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.142")])
# calculating for start.142
x <- train[,c("delta", "stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.142.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.143")])
# calculating for start.143
x <- train[,c("delta", "stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.143.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.144")])
# calculating for start.144
x <- train[,c("delta", "stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.144.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.145")])
# calculating for start.145
x <- train[,c("delta", "stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.61","stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.145.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.146")])
# calculating for start.146
x <- train[,c("delta", "stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.62","stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.146.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.147")])
# calculating for start.147
x <- train[,c("delta", "stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.63","stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.147.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.148")])
# calculating for start.148
x <- train[,c("delta", "stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.64","stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.148.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.149")])
# calculating for start.149
x <- train[,c("delta", "stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.65","stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.149.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.150")])
# calculating for start.150
x <- train[,c("delta", "stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.66","stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.150.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.151")])
# calculating for start.151
x <- train[,c("delta", "stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.67","stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.151.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.152")])
# calculating for start.152
x <- train[,c("delta", "stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.68","stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.152.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.153")])
# calculating for start.153
x <- train[,c("delta", "stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.69","stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.153.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.154")])
# calculating for start.154
x <- train[,c("delta", "stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.70","stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.154.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.155")])
# calculating for start.155
x <- train[,c("delta", "stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.71","stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.155.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.156")])
# calculating for start.156
x <- train[,c("delta", "stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.72","stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.156.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.157")])
# calculating for start.157
x <- train[,c("delta", "stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.73","stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.157.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.158")])
# calculating for start.158
x <- train[,c("delta", "stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.74","stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.158.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.159")])
# calculating for start.159
x <- train[,c("delta", "stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.75","stop.76","stop.77","stop.78","stop.79","stop.80","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.159.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.160")])
# calculating for start.160
x <- train[,c("delta", "stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.76","stop.77","stop.78","stop.79","stop.80","stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.160.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.161")])
# calculating for start.161
x <- train[,c("delta", "stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.81","stop.82","stop.83","stop.84","stop.85","stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.161.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.162")])
# calculating for start.162
x <- train[,c("delta", "stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.162.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.163")])
# calculating for start.163
x <- train[,c("delta", "stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.163.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.164")])
# calculating for start.164
x <- train[,c("delta", "stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.164.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.165")])
# calculating for start.165
x <- train[,c("delta", "stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.81","stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.165.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.166")])
# calculating for start.166
x <- train[,c("delta", "stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.82","stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.166.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.167")])
# calculating for start.167
x <- train[,c("delta", "stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.83","stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.167.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.168")])
# calculating for start.168
x <- train[,c("delta", "stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.84","stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.168.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.169")])
# calculating for start.169
x <- train[,c("delta", "stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.85","stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.169.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.170")])
# calculating for start.170
x <- train[,c("delta", "stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.86","stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.170.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.171")])
# calculating for start.171
x <- train[,c("delta", "stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.87","stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.171.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.172")])
# calculating for start.172
x <- train[,c("delta", "stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.88","stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.172.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.173")])
# calculating for start.173
x <- train[,c("delta", "stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.89","stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.173.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.174")])
# calculating for start.174
x <- train[,c("delta", "stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.90","stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.174.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.175")])
# calculating for start.175
x <- train[,c("delta", "stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.91","stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.175.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.176")])
# calculating for start.176
x <- train[,c("delta", "stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.92","stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.176.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.177")])
# calculating for start.177
x <- train[,c("delta", "stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.93","stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.177.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.178")])
# calculating for start.178
x <- train[,c("delta", "stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.94","stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.178.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.179")])
# calculating for start.179
x <- train[,c("delta", "stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.95","stop.96","stop.97","stop.98","stop.99","stop.100","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.179.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.180")])
# calculating for start.180
x <- train[,c("delta", "stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.96","stop.97","stop.98","stop.99","stop.100","stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.180.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.181")])
# calculating for start.181
x <- train[,c("delta", "stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.101","stop.102","stop.103","stop.104","stop.105","stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.181.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.182")])
# calculating for start.182
x <- train[,c("delta", "stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.182.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.183")])
# calculating for start.183
x <- train[,c("delta", "stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.183.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.184")])
# calculating for start.184
x <- train[,c("delta", "stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.184.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.185")])
# calculating for start.185
x <- train[,c("delta", "stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.101","stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.185.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.186")])
# calculating for start.186
x <- train[,c("delta", "stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.102","stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.186.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.187")])
# calculating for start.187
x <- train[,c("delta", "stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.103","stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.187.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.188")])
# calculating for start.188
x <- train[,c("delta", "stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.104","stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.188.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.189")])
# calculating for start.189
x <- train[,c("delta", "stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.105","stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.189.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.190")])
# calculating for start.190
x <- train[,c("delta", "stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.106","stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.190.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.191")])
# calculating for start.191
x <- train[,c("delta", "stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.107","stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.191.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.192")])
# calculating for start.192
x <- train[,c("delta", "stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.108","stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.192.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.193")])
# calculating for start.193
x <- train[,c("delta", "stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.109","stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.193.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.194")])
# calculating for start.194
x <- train[,c("delta", "stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.110","stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.194.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.195")])
# calculating for start.195
x <- train[,c("delta", "stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.111","stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.195.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.196")])
# calculating for start.196
x <- train[,c("delta", "stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.112","stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.196.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.197")])
# calculating for start.197
x <- train[,c("delta", "stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.113","stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.197.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.198")])
# calculating for start.198
x <- train[,c("delta", "stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.114","stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.198.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.199")])
# calculating for start.199
x <- train[,c("delta", "stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.115","stop.116","stop.117","stop.118","stop.119","stop.120","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.199.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.200")])
# calculating for start.200
x <- train[,c("delta", "stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.116","stop.117","stop.118","stop.119","stop.120","stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.200.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.201")])
# calculating for start.201
x <- train[,c("delta", "stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.121","stop.122","stop.123","stop.124","stop.125","stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.201.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.202")])
# calculating for start.202
x <- train[,c("delta", "stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.202.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.203")])
# calculating for start.203
x <- train[,c("delta", "stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.203.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.204")])
# calculating for start.204
x <- train[,c("delta", "stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.204.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.205")])
# calculating for start.205
x <- train[,c("delta", "stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.121","stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.205.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.206")])
# calculating for start.206
x <- train[,c("delta", "stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.122","stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.206.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.207")])
# calculating for start.207
x <- train[,c("delta", "stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.123","stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.207.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.208")])
# calculating for start.208
x <- train[,c("delta", "stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.124","stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.208.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.209")])
# calculating for start.209
x <- train[,c("delta", "stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.125","stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.209.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.210")])
# calculating for start.210
x <- train[,c("delta", "stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.126","stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.210.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.211")])
# calculating for start.211
x <- train[,c("delta", "stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.127","stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.211.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.212")])
# calculating for start.212
x <- train[,c("delta", "stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.128","stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.212.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.213")])
# calculating for start.213
x <- train[,c("delta", "stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.129","stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.213.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.214")])
# calculating for start.214
x <- train[,c("delta", "stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.130","stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.214.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.215")])
# calculating for start.215
x <- train[,c("delta", "stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.131","stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.215.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.216")])
# calculating for start.216
x <- train[,c("delta", "stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.132","stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.216.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.217")])
# calculating for start.217
x <- train[,c("delta", "stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.133","stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.217.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.218")])
# calculating for start.218
x <- train[,c("delta", "stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.134","stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.218.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.219")])
# calculating for start.219
x <- train[,c("delta", "stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.135","stop.136","stop.137","stop.138","stop.139","stop.140","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.219.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.220")])
# calculating for start.220
x <- train[,c("delta", "stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.136","stop.137","stop.138","stop.139","stop.140","stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.220.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.221")])
# calculating for start.221
x <- train[,c("delta", "stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.141","stop.142","stop.143","stop.144","stop.145","stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.221.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.222")])
# calculating for start.222
x <- train[,c("delta", "stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.222.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.223")])
# calculating for start.223
x <- train[,c("delta", "stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.223.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.224")])
# calculating for start.224
x <- train[,c("delta", "stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.224.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.225")])
# calculating for start.225
x <- train[,c("delta", "stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.141","stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.225.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.226")])
# calculating for start.226
x <- train[,c("delta", "stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.142","stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.226.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.227")])
# calculating for start.227
x <- train[,c("delta", "stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.143","stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.227.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.228")])
# calculating for start.228
x <- train[,c("delta", "stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.144","stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.228.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.229")])
# calculating for start.229
x <- train[,c("delta", "stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.145","stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.229.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.230")])
# calculating for start.230
x <- train[,c("delta", "stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.146","stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.230.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.231")])
# calculating for start.231
x <- train[,c("delta", "stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.147","stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.231.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.232")])
# calculating for start.232
x <- train[,c("delta", "stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.148","stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.232.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.233")])
# calculating for start.233
x <- train[,c("delta", "stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.149","stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.233.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.234")])
# calculating for start.234
x <- train[,c("delta", "stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.150","stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.234.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.235")])
# calculating for start.235
x <- train[,c("delta", "stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.151","stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.235.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.236")])
# calculating for start.236
x <- train[,c("delta", "stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.152","stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.236.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.237")])
# calculating for start.237
x <- train[,c("delta", "stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.153","stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.237.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.238")])
# calculating for start.238
x <- train[,c("delta", "stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.154","stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.238.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.239")])
# calculating for start.239
x <- train[,c("delta", "stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.155","stop.156","stop.157","stop.158","stop.159","stop.160","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.239.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.240")])
# calculating for start.240
x <- train[,c("delta", "stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.156","stop.157","stop.158","stop.159","stop.160","stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.240.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.241")])
# calculating for start.241
x <- train[,c("delta", "stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.161","stop.162","stop.163","stop.164","stop.165","stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.241.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.242")])
# calculating for start.242
x <- train[,c("delta", "stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.242.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.243")])
# calculating for start.243
x <- train[,c("delta", "stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.243.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.244")])
# calculating for start.244
x <- train[,c("delta", "stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.244.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.245")])
# calculating for start.245
x <- train[,c("delta", "stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.161","stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.245.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.246")])
# calculating for start.246
x <- train[,c("delta", "stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.162","stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.246.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.247")])
# calculating for start.247
x <- train[,c("delta", "stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.163","stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.247.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.248")])
# calculating for start.248
x <- train[,c("delta", "stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.164","stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.248.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.249")])
# calculating for start.249
x <- train[,c("delta", "stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.165","stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.249.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.250")])
# calculating for start.250
x <- train[,c("delta", "stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.166","stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.250.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.251")])
# calculating for start.251
x <- train[,c("delta", "stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.167","stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.251.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.252")])
# calculating for start.252
x <- train[,c("delta", "stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.168","stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.252.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.253")])
# calculating for start.253
x <- train[,c("delta", "stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.169","stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.253.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.254")])
# calculating for start.254
x <- train[,c("delta", "stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.170","stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.254.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.255")])
# calculating for start.255
x <- train[,c("delta", "stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.171","stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.255.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.256")])
# calculating for start.256
x <- train[,c("delta", "stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.172","stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.256.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.257")])
# calculating for start.257
x <- train[,c("delta", "stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.173","stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.257.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.258")])
# calculating for start.258
x <- train[,c("delta", "stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.174","stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.258.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.259")])
# calculating for start.259
x <- train[,c("delta", "stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.175","stop.176","stop.177","stop.178","stop.179","stop.180","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.259.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.260")])
# calculating for start.260
x <- train[,c("delta", "stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.176","stop.177","stop.178","stop.179","stop.180","stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.260.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.261")])
# calculating for start.261
x <- train[,c("delta", "stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.181","stop.182","stop.183","stop.184","stop.185","stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.261.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.262")])
# calculating for start.262
x <- train[,c("delta", "stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.262.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.263")])
# calculating for start.263
x <- train[,c("delta", "stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.263.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.264")])
# calculating for start.264
x <- train[,c("delta", "stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.264.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.265")])
# calculating for start.265
x <- train[,c("delta", "stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.181","stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.265.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.266")])
# calculating for start.266
x <- train[,c("delta", "stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.182","stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.266.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.267")])
# calculating for start.267
x <- train[,c("delta", "stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.183","stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.267.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.268")])
# calculating for start.268
x <- train[,c("delta", "stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.184","stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.268.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.269")])
# calculating for start.269
x <- train[,c("delta", "stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.185","stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.269.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.270")])
# calculating for start.270
x <- train[,c("delta", "stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.186","stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.270.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.271")])
# calculating for start.271
x <- train[,c("delta", "stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.187","stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.271.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.272")])
# calculating for start.272
x <- train[,c("delta", "stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.188","stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.272.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.273")])
# calculating for start.273
x <- train[,c("delta", "stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.189","stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.273.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.274")])
# calculating for start.274
x <- train[,c("delta", "stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.190","stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.274.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.275")])
# calculating for start.275
x <- train[,c("delta", "stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.191","stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.275.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.276")])
# calculating for start.276
x <- train[,c("delta", "stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.192","stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.276.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.277")])
# calculating for start.277
x <- train[,c("delta", "stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.193","stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.277.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.278")])
# calculating for start.278
x <- train[,c("delta", "stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.194","stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.278.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.279")])
# calculating for start.279
x <- train[,c("delta", "stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.195","stop.196","stop.197","stop.198","stop.199","stop.200","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.279.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.280")])
# calculating for start.280
x <- train[,c("delta", "stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.196","stop.197","stop.198","stop.199","stop.200","stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.280.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.281")])
# calculating for start.281
x <- train[,c("delta", "stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.201","stop.202","stop.203","stop.204","stop.205","stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.281.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.282")])
# calculating for start.282
x <- train[,c("delta", "stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.282.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.283")])
# calculating for start.283
x <- train[,c("delta", "stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.283.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.284")])
# calculating for start.284
x <- train[,c("delta", "stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.284.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.285")])
# calculating for start.285
x <- train[,c("delta", "stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.201","stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.285.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.286")])
# calculating for start.286
x <- train[,c("delta", "stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.202","stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.286.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.287")])
# calculating for start.287
x <- train[,c("delta", "stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.203","stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.287.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.288")])
# calculating for start.288
x <- train[,c("delta", "stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.204","stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.288.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.289")])
# calculating for start.289
x <- train[,c("delta", "stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.205","stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.289.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.290")])
# calculating for start.290
x <- train[,c("delta", "stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.206","stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.290.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.291")])
# calculating for start.291
x <- train[,c("delta", "stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.207","stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.291.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.292")])
# calculating for start.292
x <- train[,c("delta", "stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.208","stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.292.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.293")])
# calculating for start.293
x <- train[,c("delta", "stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.209","stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.293.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.294")])
# calculating for start.294
x <- train[,c("delta", "stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.210","stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.294.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.295")])
# calculating for start.295
x <- train[,c("delta", "stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.211","stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.295.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.296")])
# calculating for start.296
x <- train[,c("delta", "stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.212","stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.296.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.297")])
# calculating for start.297
x <- train[,c("delta", "stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.213","stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.297.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.298")])
# calculating for start.298
x <- train[,c("delta", "stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.214","stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.298.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.299")])
# calculating for start.299
x <- train[,c("delta", "stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.215","stop.216","stop.217","stop.218","stop.219","stop.220","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.299.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.300")])
# calculating for start.300
x <- train[,c("delta", "stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.216","stop.217","stop.218","stop.219","stop.220","stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.300.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.301")])
# calculating for start.301
x <- train[,c("delta", "stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365","stop.381","stop.382","stop.383","stop.384","stop.385")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.221","stop.222","stop.223","stop.224","stop.225","stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365","stop.381","stop.382","stop.383","stop.384","stop.385"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.301.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.302")])
# calculating for start.302
x <- train[,c("delta", "stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.302.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.303")])
# calculating for start.303
x <- train[,c("delta", "stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.303.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.304")])
# calculating for start.304
x <- train[,c("delta", "stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.304.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.305")])
# calculating for start.305
x <- train[,c("delta", "stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.221","stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.305.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.306")])
# calculating for start.306
x <- train[,c("delta", "stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.222","stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.306.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.307")])
# calculating for start.307
x <- train[,c("delta", "stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.223","stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.307.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.308")])
# calculating for start.308
x <- train[,c("delta", "stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.224","stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.308.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.309")])
# calculating for start.309
x <- train[,c("delta", "stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.225","stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.309.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.310")])
# calculating for start.310
x <- train[,c("delta", "stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.226","stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.310.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.311")])
# calculating for start.311
x <- train[,c("delta", "stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.227","stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.311.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.312")])
# calculating for start.312
x <- train[,c("delta", "stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.228","stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.312.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.313")])
# calculating for start.313
x <- train[,c("delta", "stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.229","stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.313.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.314")])
# calculating for start.314
x <- train[,c("delta", "stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.230","stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.314.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.315")])
# calculating for start.315
x <- train[,c("delta", "stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.231","stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.315.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.316")])
# calculating for start.316
x <- train[,c("delta", "stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.232","stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.316.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.317")])
# calculating for start.317
x <- train[,c("delta", "stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.233","stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.317.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.318")])
# calculating for start.318
x <- train[,c("delta", "stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.234","stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.318.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.319")])
# calculating for start.319
x <- train[,c("delta", "stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.235","stop.236","stop.237","stop.238","stop.239","stop.240","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.319.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.320")])
# calculating for start.320
x <- train[,c("delta", "stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.236","stop.237","stop.238","stop.239","stop.240","stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.320.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.321")])
# calculating for start.321
x <- train[,c("delta", "stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365","stop.381","stop.382","stop.383","stop.384","stop.385")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.241","stop.242","stop.243","stop.244","stop.245","stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365","stop.381","stop.382","stop.383","stop.384","stop.385"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.321.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.322")])
# calculating for start.322
x <- train[,c("delta", "stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.322.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.323")])
# calculating for start.323
x <- train[,c("delta", "stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.323.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.324")])
# calculating for start.324
x <- train[,c("delta", "stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.324.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.325")])
# calculating for start.325
x <- train[,c("delta", "stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.241","stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.325.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.326")])
# calculating for start.326
x <- train[,c("delta", "stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.242","stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.326.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.327")])
# calculating for start.327
x <- train[,c("delta", "stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.243","stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.327.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.328")])
# calculating for start.328
x <- train[,c("delta", "stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.244","stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.328.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.329")])
# calculating for start.329
x <- train[,c("delta", "stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.245","stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.329.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.330")])
# calculating for start.330
x <- train[,c("delta", "stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.246","stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.330.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.331")])
# calculating for start.331
x <- train[,c("delta", "stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.247","stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.331.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.332")])
# calculating for start.332
x <- train[,c("delta", "stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.248","stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.332.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.333")])
# calculating for start.333
x <- train[,c("delta", "stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.249","stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.333.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.334")])
# calculating for start.334
x <- train[,c("delta", "stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.250","stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.334.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.335")])
# calculating for start.335
x <- train[,c("delta", "stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.251","stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.335.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.336")])
# calculating for start.336
x <- train[,c("delta", "stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.252","stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.336.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.337")])
# calculating for start.337
x <- train[,c("delta", "stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.253","stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.337.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.338")])
# calculating for start.338
x <- train[,c("delta", "stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.254","stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.338.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.339")])
# calculating for start.339
x <- train[,c("delta", "stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.255","stop.256","stop.257","stop.258","stop.259","stop.260","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.339.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.340")])
# calculating for start.340
x <- train[,c("delta", "stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.256","stop.257","stop.258","stop.259","stop.260","stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.340.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.341")])
# calculating for start.341
x <- train[,c("delta", "stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365","stop.381","stop.382","stop.383","stop.384","stop.385")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.261","stop.262","stop.263","stop.264","stop.265","stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365","stop.381","stop.382","stop.383","stop.384","stop.385"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.341.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.342")])
# calculating for start.342
x <- train[,c("delta", "stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.342.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.343")])
# calculating for start.343
x <- train[,c("delta", "stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.343.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.344")])
# calculating for start.344
x <- train[,c("delta", "stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.344.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.345")])
# calculating for start.345
x <- train[,c("delta", "stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.261","stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.345.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.346")])
# calculating for start.346
x <- train[,c("delta", "stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.262","stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.346.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.347")])
# calculating for start.347
x <- train[,c("delta", "stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.263","stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.347.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.348")])
# calculating for start.348
x <- train[,c("delta", "stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.264","stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.348.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.349")])
# calculating for start.349
x <- train[,c("delta", "stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.265","stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.349.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.350")])
# calculating for start.350
x <- train[,c("delta", "stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.266","stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.350.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.351")])
# calculating for start.351
x <- train[,c("delta", "stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.267","stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.351.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.352")])
# calculating for start.352
x <- train[,c("delta", "stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.268","stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.352.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.353")])
# calculating for start.353
x <- train[,c("delta", "stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.269","stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.353.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.354")])
# calculating for start.354
x <- train[,c("delta", "stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.270","stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.354.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.355")])
# calculating for start.355
x <- train[,c("delta", "stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.271","stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.355.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.356")])
# calculating for start.356
x <- train[,c("delta", "stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.272","stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.356.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.357")])
# calculating for start.357
x <- train[,c("delta", "stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.273","stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.357.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.358")])
# calculating for start.358
x <- train[,c("delta", "stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.274","stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.358.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.359")])
# calculating for start.359
x <- train[,c("delta", "stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.275","stop.276","stop.277","stop.278","stop.279","stop.280","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.359.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.360")])
# calculating for start.360
x <- train[,c("delta", "stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.276","stop.277","stop.278","stop.279","stop.280","stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.360.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.361")])
# calculating for start.361
x <- train[,c("delta", "stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365","stop.381","stop.382","stop.383","stop.384","stop.385")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.281","stop.282","stop.283","stop.284","stop.285","stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365","stop.381","stop.382","stop.383","stop.384","stop.385"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.361.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.362")])
# calculating for start.362
x <- train[,c("delta", "stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.362.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.363")])
# calculating for start.363
x <- train[,c("delta", "stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.363.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.364")])
# calculating for start.364
x <- train[,c("delta", "stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.364.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.365")])
# calculating for start.365
x <- train[,c("delta", "stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.281","stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.365.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.366")])
# calculating for start.366
x <- train[,c("delta", "stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.282","stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.366.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.367")])
# calculating for start.367
x <- train[,c("delta", "stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.283","stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.367.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.368")])
# calculating for start.368
x <- train[,c("delta", "stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.284","stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.368.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.369")])
# calculating for start.369
x <- train[,c("delta", "stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.285","stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.369.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.370")])
# calculating for start.370
x <- train[,c("delta", "stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.286","stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.370.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.371")])
# calculating for start.371
x <- train[,c("delta", "stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.287","stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.371.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.372")])
# calculating for start.372
x <- train[,c("delta", "stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.288","stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.372.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.373")])
# calculating for start.373
x <- train[,c("delta", "stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.289","stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.373.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.374")])
# calculating for start.374
x <- train[,c("delta", "stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.290","stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.374.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.375")])
# calculating for start.375
x <- train[,c("delta", "stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.291","stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.375.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.376")])
# calculating for start.376
x <- train[,c("delta", "stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.292","stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.376.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.377")])
# calculating for start.377
x <- train[,c("delta", "stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.293","stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.377.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.378")])
# calculating for start.378
x <- train[,c("delta", "stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.294","stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.378.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.379")])
# calculating for start.379
x <- train[,c("delta", "stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.295","stop.296","stop.297","stop.298","stop.299","stop.300","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.379.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.380")])
# calculating for start.380
x <- train[,c("delta", "stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.296","stop.297","stop.298","stop.299","stop.300","stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.380.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.381")])
# calculating for start.381
x <- train[,c("delta", "stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365","stop.381","stop.382","stop.383","stop.384","stop.385")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.301","stop.302","stop.303","stop.304","stop.305","stop.321","stop.322","stop.323","stop.324","stop.325","stop.341","stop.342","stop.343","stop.344","stop.345","stop.361","stop.362","stop.363","stop.364","stop.365","stop.381","stop.382","stop.383","stop.384","stop.385"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.381.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.382")])
# calculating for start.382
x <- train[,c("delta", "stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.382.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.383")])
# calculating for start.383
x <- train[,c("delta", "stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.383.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.384")])
# calculating for start.384
x <- train[,c("delta", "stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.384.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.385")])
# calculating for start.385
x <- train[,c("delta", "stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.301","stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.321","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.341","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.361","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.381","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.385.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.386")])
# calculating for start.386
x <- train[,c("delta", "stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.302","stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.322","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.342","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.362","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.382","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.386.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.387")])
# calculating for start.387
x <- train[,c("delta", "stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.303","stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.323","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.343","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.363","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.383","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.387.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.388")])
# calculating for start.388
x <- train[,c("delta", "stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.304","stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.324","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.344","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.364","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.384","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.388.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.389")])
# calculating for start.389
x <- train[,c("delta", "stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.305","stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.325","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.345","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.365","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.385","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.389.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.390")])
# calculating for start.390
x <- train[,c("delta", "stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.306","stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.326","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.346","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.366","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.386","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.390.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.391")])
# calculating for start.391
x <- train[,c("delta", "stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.307","stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.327","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.347","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.367","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.387","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.391.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.392")])
# calculating for start.392
x <- train[,c("delta", "stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.308","stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.328","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.348","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.368","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.388","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.392.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.393")])
# calculating for start.393
x <- train[,c("delta", "stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.309","stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.329","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.349","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.369","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.389","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.393.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.394")])
# calculating for start.394
x <- train[,c("delta", "stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.310","stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.330","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.350","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.370","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.390","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.394.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.395")])
# calculating for start.395
x <- train[,c("delta", "stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.311","stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.331","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.351","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.371","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.391","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.395.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.396")])
# calculating for start.396
x <- train[,c("delta", "stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.312","stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.332","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.352","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.372","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.392","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.396.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.397")])
# calculating for start.397
x <- train[,c("delta", "stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.313","stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.333","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.353","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.373","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.393","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.397.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.398")])
# calculating for start.398
x <- train[,c("delta", "stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.314","stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.334","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.354","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.374","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.394","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.398.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.399")])
# calculating for start.399
x <- train[,c("delta", "stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.315","stop.316","stop.317","stop.318","stop.319","stop.320","stop.335","stop.336","stop.337","stop.338","stop.339","stop.340","stop.355","stop.356","stop.357","stop.358","stop.359","stop.360","stop.375","stop.376","stop.377","stop.378","stop.379","stop.380","stop.395","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.399.RData")
save(md, file = outfile)
print(proc.time() - ptm)
ptm <- proc.time()

y <- as.factor(train[,c("start.400")])
# calculating for start.400
x <- train[,c("delta", "stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380","stop.396","stop.397","stop.398","stop.399","stop.400")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "stop.316","stop.317","stop.318","stop.319","stop.320","stop.336","stop.337","stop.338","stop.339","stop.340","stop.356","stop.357","stop.358","stop.359","stop.360","stop.376","stop.377","stop.378","stop.379","stop.380","stop.396","stop.397","stop.398","stop.399","stop.400"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.start.400.RData")
save(md, file = outfile)
print(proc.time() - ptm)
