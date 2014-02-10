#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

use Text::CSV;

my $csv = Text::CSV->new ( { binary => 1 } )  # should set binary attribute.
                or die "Cannot use CSV: ".Text::CSV->error_diag ();

open my $fh, "<:encoding(utf8)", "submission.csv" or die "submission.csv: $!";

my $h = <$fh>;
print $h;

srand(55);

while ( my $row = $csv->getline( $fh ) ) {
  my ($id, @fields) = @{ $row };
  for (my $i = 0; $i < $#fields; $i++) {
    if ($fields[$i] == 1) {
      if (rand() < .05) {
        $fields[$i] = 0; 
      }
    }
  }
  print "$id,".join(',', @fields)."\n";
}
