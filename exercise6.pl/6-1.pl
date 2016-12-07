#!/usr/bin/perl -w
use strict;
print "please enter your first dnastring : \n";
my $dna1 = <STDIN>;
chomp $dna1;
print "please enter your second dnastring : \n";
my $dna2 = <STDIN>;
chomp $dna2;
my $dna = linkDNA (\$dna1,  \$dna2);
sub linkDNA {
    my ($dna1, $dna2) = @_;
    my $dna = $$dna1 . $$dna2;
    return $dna;
 }
print "The linked dna: \n";
print "$dna\n";
exit;
