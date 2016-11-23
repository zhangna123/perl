#!/usr/bin/perl -w
use strict;
use utf8;
my $proteinfile = 'NM_021964frament.pep';
open( PROTEINFILE, $proteinfile );
my $protein = <PROTEINFILE>;
print "\nHere is the first line of the protein file:\n\n";
print $protein;
my $protein = <PROTEINFILE>;
print "\nHere is the second line of the protein file:\n\n";
print $protein;
my $protein = <PROTEINFILE>;
print "\nHere is the third line of the protein file:\n\n";
print $protein;
close PROTEINFILE;
exit;

