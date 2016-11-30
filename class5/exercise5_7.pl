#!/usr/bin/perl -w
print "please enter the filename: ";
$filename = <STDIN>;
chomp $filename;
unless ( open (DNA, $filename) ) {
     print " cannot open file: \"$filename\"\n\n";
     exit;
    }
@dna = <DNA>;
close DNA;
$dna = join ('',@dna);
$dna =~ s/\s//g;
for ( $position = 0; $position < length $dna; ++$position ) {
       $base = substr ( $dna , $position, 1);
       if ( $base =~ /[GC]/) {
           ++$count;
        }
    }
$y = $count/length $dna;
print "G+C: $y";

