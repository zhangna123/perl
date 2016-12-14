#!/usr/bin/perl -w
use strict;
use warnings;
my $nucleotide = randomnucleotide();
my $guess;
do 
{
print "please guess my nucleotide !!\n";
  $guess = <STDIN>;
  chomp $guess;
} until ( $guess eq $nucleotide );
print "you are right!!\n";
exit;


sub randomnucleotide {
  my (@nucleotides) = ('A', 'C', 'G', 'T');
  return $nucleotides[rand @nucleotides];
}


