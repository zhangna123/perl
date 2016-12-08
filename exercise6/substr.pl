#!/usr/bin/perl -w
use strict;
my $dna = 'ACAGGGTTTATATTT';
my $seq = '';
if  (@ARGV) { $seq = $ARGV[0]; }
   else { $seq = 'AC' ;}
my $leng = length $dna;
for (my $position = 0; $position < $leng-1; ++$position)  {
     my $bases = substr ($dna, $position, 2);
     if ( $bases =~ /$seq/) {
       my  $result = substr ($dna, $position);
       print "$result\n";
    }
}
exit;

