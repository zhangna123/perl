#!/usr/bin/perl -w
use strict;
#4.2
my $a = 17;
print $a;
#4.3
my $DNA = 'AACCGGTT';
$DNA =~ tr/ACGT/acgt/;
print $DNA;

#4.4
print "\U$DNA";

#4.5
my $RNA = 'AAUUCCG';
$RNA =~ s/U/T/g;
print $RNA;

#4.7
my $protein1 = 'NM_021964fragment.pep';
my $protein2 = 'readfile.pl';
my @files = ($protein1, $protein2);
for my $file (@files){
open my $PROTEINFILE, '<', $file  or die "$0: failed to open input file '$file':  $!\n";
my @file = <$PROTEINFILE>;
close $PROTEINFILE or warn "$0: failed to close input file '$file': $!\n";
print @file;
}


#4.8
my $protein = 'NM_021964fragment.pep';
open my $PROTEINFILE, '<', $protein  or die "$0: failed to open input file '$protein':  $!\n";
my @protein = <$PROTEINFILE>;
close $PROTEINFILE or warn "$0: failed to close input file 'protein': $!\n";
print my @re = reverse @protein;
exit;

