#!/usr/bin/perl -w
use strict;
print "please enter your dnastring:\n";
my $dna = <STDIN>;
chomp $dna;
my @count = countDNA($dna);
sub countDNA {
   my ($dna) = @_;
   my $sum = length $dna;
   my $countA = ( $dna=~ tr/Aa// );
   my $countT = ( $dna=~ tr/Tt// );
   my $countG = ( $dna=~ tr/Gg// );
   my $countC = ( $dna=~ tr/Cc// );
   my $A = $countA/$sum*100;
   my $T = $countT/$sum*100;
   my $G = $countG/$sum*100;
   my $C = $countC/$sum*100;
   my @percent = ($A, $T, $G, $C);
   return @percent;
}

print "these are the percent of the A,T,G,C :\n";
print "@count\n";
exit;
