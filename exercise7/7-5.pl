#!/usr/bin/perl -w
use strict;
use warnings;
print "please enter your codon:\n";
my $DNA = <STDIN>;
chomp $DNA;
my $i;
my $mutant;
srand( time | $$ );
$mutant = mutate_better($DNA);
print "\nMutant DNA\n\n";
print "\nHere is the original DNA:\n\n";
print "$DNA\n";
print "\nHere is the mutant DNA:\n\n";
$mutant = mutate_better($DNA);
print "$mutant\n";
   
exit;
############################################

sub mutate_better {
  my ($dna) = @_;
  my ($position) = randomposition($dna);
  my ($newbase);
  do {
    $newbase = randomnucleotide();
  }until ( $newbase ne substr($dna, $position, 1) );
 substr($dna, $position, 1, $newbase);
 return $dna;
}

#####################
sub randomelement {
  my (@array) = @_;
  return $array[ rand @array ];
}

############################
sub randomnucleotide {
   my (@nucleotides) = ( 'A', 'C', 'G', 'T' );
   return randomelement(@nucleotides);
}

#################################
sub randomposition {
  my ($string) = @_;
  return int rand length $string;
}

