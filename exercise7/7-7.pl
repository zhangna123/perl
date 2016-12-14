#!/usr/bin/perl -w
use strict;
use warnings;
print "please enter your probabilities for A C G T:\n";
my $x1 = <STDIN>;
my $x2 = <STDIN>;
my $x3 = <STDIN>;
my $x4 = <STDIN>;
my $nucleotide;
print "\nHere are 10 nucleotides:\n\n";
for ( my $i = 0 ; $i < 10 ; ++$i ) {
     $nucleotide = randomnucleotide( $x1, $x2, $x3, $x4 );
     print "$nucleotide\n";
     }
exit;


sub randomnucleotide {
my ($x1, $x2, $x3, $x4 ) = @_;
my $a = $x1;
my $b = $x1 + $x2;
my $c = $x1 + $x2 + $x3;
my $i = rand(1);
my $nucleo;
if ( $i <= $a ) { $nucleo = "A";}
   elsif ( $i <= $b ) {$nucleo = "C";}
   elsif ( $i <= $c ) {$nucleo = "G";}
   else {$nucleo = "T";}
return $nucleo; 
}
