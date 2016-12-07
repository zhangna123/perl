#!/usr/bin/perl -w
use strict;
print "please enter your dnastring: \n";
my $dna = <STDIN>;
chomp $dna;
my $y = 0;
my $length = LENGTH($dna);
print "string length: \n";
print "$length\n";
my $GCpercent = GC($dna);
print "GCpercent: \n";
print "$GCpercent\n";
exit;

sub LENGTH {
my ($dna) = @_;
$length = length $dna;
return $length;
}



sub GC {
my ($dna) = @_;
 my $position = 0;
 my $base = '';
 my $count = 0;
for ( $position = 0; $position < length $dna; ++$position ) {
       $base = substr ( $dna , $position, 1);
       if ( $base =~ /[GC]/) {
           ++$count;
        }
    }
 $y = ($count/length $dna)*100;
return $y;
}
