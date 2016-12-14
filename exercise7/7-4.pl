#!/usr/bin/perl -w
use strict;
use warnings;
my $protein = 'AAAAAAAAAAAAAAAAAAAAAAAAAAA';
my $i;
my $mutant;
srand( time | $$ );
$mutant = mutate_better($protein);
print "\nMutant protein\n\n";
print "\nHere is the original protein:\n\n";
print "$protein\n";
print "\nHere is the mutant protein:\n\n";
print "$mutant\n";
print "\nHere are 10 more successive mutations:\n\n";
for ( $i = 0 ; $i < 10 ; ++$i ) {
     $mutant = mutate_better($mutant);
     print "$mutant\n";
   }
exit;
############################################

sub mutate_better {
  my ($protein1) = @_;
  my ($position) = randomposition($protein1);
  my ($newbase);
  do {
    $newbase = randomaminoacid();
  }until ( $newbase ne substr($protein1, $position, 1) );
 substr($protein1, $position, 1, $newbase);
 return $protein1;
}

#####################
sub randomelement {
  my (@array) = @_;
  return $array[ rand @array ];
}

############################
sub randomaminoacid {
   my (@aminoacid) = ( 'G', 'A', 'V', 'I', 'L', 'F', 'P', 'M', 'W', 'C', 'S', 'T', 'N', 'Q', 'Y', 'H', 'D', 'E', 'K', 'R' );
   return randomelement(@aminoacid);
}

#################################
sub randomposition {
  my ($string) = @_;
  return int rand length $string;
}

