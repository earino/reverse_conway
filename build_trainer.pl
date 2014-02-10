#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;
use Sort::Naturally;

my %indexes = ( );
my %rev_indexes = ( );
foreach my $i ( 3 .. 402 ) {
  my $idx = $i - 2;
  my $key = "start.$idx";
  my $value = $i;

  $indexes{$key} = $value;
  $rev_indexes{$value} = $key;
}

my @grid = ( );

foreach my $i (1 .. 20) {
  $grid[$i-1] ||= [];
  foreach my $j (1 .. 20) {
    my $lookup = (($i - 1) * 20) + $j + 2;
    push(@{ $grid[$i-1] }, $rev_indexes{$lookup});
    #print "VALUE: $lookup: $rev_indexes{$lookup}\n";
  }
}

my $MIN_X = 0;
my $MIN_Y = 0;
my $MAX_X = 400;
my $MAX_Y = 400;

my %retval = ( );

foreach my $i ( 0 .. 19 ) {
  foreach my $j ( 0 .. 19) {
    my @neighbors = ( );

#    my $padded = sprintf("%*s", 9, $grid[$i]->[$j]);
#    print "[$padded]";
    foreach my $x ( -4 .. 4 ) {
      foreach my $y ( -4 .. 4 ) {
        next if $i + $x < 0;
        next if $i + $x > 20;
        next if $j + $y < 0;
        next if $j + $y > 20;
        if (defined $grid[$i + $x]->[$j + $y]) {
          push (@neighbors, $grid[$i + $x]->[$j + $y]);
        }
      }
    }

    $retval{$grid[$i]->[$j]} = \@neighbors;
  }
}

print <<EOT;
library(randomForest)
library(parallel)
ntrees <- 120
nproc <- detectCores() - 2 
train <- read.csv("~/play/conway/train.csv")
EOT
foreach my $key (nsort keys %retval) {
  my @values = @{ $retval{$key} };

  my $all_vals = join('","', @values);
  $all_vals =~ s/start/stop/g;

  print <<EOT;
ptm <- proc.time()

y <- as.factor(train[,c("$key")])
# calculating for $key
x <- train[,c("delta", "$all_vals")]
mds <- mclapply(rep(ntrees/nproc,nproc),
                  function(ntree) randomForest(x,y,ntree=ntree,mtry=length(c("delta", "$all_vals"))),
                  mc.cores = nproc)

print(mds)

md <- do.call("combine", mds)

outfile <- paste0("rf.$key.RData")
save(md, file = outfile)
print(proc.time() - ptm)
EOT
}

