#!/usr/bin/perl -w
use strict;
use warnings;
print "please enter your protein :\n";
my $protein = <STDIN>;
my $judge = judge($protein);
if ($judge == 0 ) {print "it is not a protein!\n";}
else {print "it is a protein!\n";}
exit;


sub judge {
my ($pritein) = @_;
chomp $protein;
$protein =~ s/\s//g;
if ($protein =~ /[^ACDEFGHIKLMNPQRSTVWY_]/i) {return 0;}
else {return 1;}
}
