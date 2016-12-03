#!/usr/bin/perl -w
$dna = 'ACTGAGCTGCTAGCTA';
$longerdna = addACGT($dna);
print "I added ACGT to $dna and got $longerdna\n\n";
exit;


sub addACGT {
   my ($dna) = @_;
   $dna .= 'ACGT';
   return $dna;
}

