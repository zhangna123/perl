#!/usr/bin/perl -w
use strict;
my $proteinfile = 'NM_021964fragment.pep';
open( PROTEINFILE, $proteinfile );
my @protein = <PROTEINFILE>;
print @protein;
close PROTEINFILE;
exit;

