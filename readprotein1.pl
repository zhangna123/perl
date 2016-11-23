#!/usr/bin/perl -w
use strict;
use diagnostics;
my $proteinfile = 'NM_021964fragment.pep';
open ( PROTEINFILE, $proteinfile );
my $protein = <PROTEINFILE>;
close PROTEINFILE;
print "Here is the protein:\n\n";
print $protein;
exit;



