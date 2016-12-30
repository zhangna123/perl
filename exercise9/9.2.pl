#!/usr/bin/perl -w
use strict;
use warnings;
use BeginPerlBioinfo;    

my %rebase_hash      = ();
%rebase_hash = parseREBASE('bionet');
print "these are your bionetfile:\n";
my @keys = keys %rebase_hash;
my @values = values %rebase_hash;
for (my $i =1; $i < scalar @keys; $i++) {
    print $keys[$i], "  =>    ", $values[$i],"\n";
}
exit;

















