#!/usr/bin/perl -w
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
print "Here is the starting DNA:\n\n";
print "$DNA\n\n";
$RNA = $DNA;
$RNA =~ s/T/U/g;
print "Here is the result of transarbing the DNA to RNA:\n\n";
print "$RNA\n";
exit;
