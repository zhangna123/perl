#!/usr/bin/perl -w
use strict;
use warnings;
print "please enter your dna :\n";
my $dna = <STDIN>;
my $judge = judge($dna);
if ($judge == 0 ) {print "it is not a dna!\n";}
else {print "it is a dna!\n";}

exit;


sub judge {
my ($dna) = @_;
chomp $dna;
$dna =~ s/\s//g;
if ($dna =~ /[^AGCTagct]/) {return 0;}
else {return 1;}
}
