#!/usr/bin/perl -w
use strict;
print "please enter the filename: ";
my $filename = <STDIN>;


sub modif {
chomp $filename;
unless ( open (DNA, $filename) ) {
     print " cannot open file: \"$filename\"\n\n";
     exit;
    }
@dna = <DNA>;
close DNA;
$dna = join ('',@dna);
$dna =~ s/\s//g;


}


