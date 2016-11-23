#!/usr/bin/perl -w
use strict;
my @bases = ('A','C', 'G', 'T');
print "Here are the array element:";
print "\nFirst element:";
print $bases[0];
print "\nSecond element:";
print $bases[1];
print "\nThird element:";
print $bases[2];
print "\nFourtn element:";
print $bases[3];

print "\n\nHere are the array elements: ";
print @bases;

print "\n\nHere are the array elements: ";
print "@bases";

my $base1 = pop @bases;
print "\nHere's the element removed from the end: ";
print $base1, "\n\n";
print "Here's the remaining array of bases: ";
print "@bases";

my @bases = ('A','C', 'G', 'T');
my $base2 = shift @bases;
print "\nHere's the element removed from the beginning: ";
print $base2, "\n\n";
print "Here's the remaining array of bases: ";
print "@bases";

my @bases = ('A','C', 'G', 'T');
my $base1 = pop @bases;
unshift (@bases, $base1);
print "\nHere's the element from the end put on the beginning: ";
print "@bases\n\n";

my @bases = ('A','C', 'G', 'T');
my $base2 = shift @bases;
push (@bases, $base2);
print "\nHere's the element from the bedinning put on the end: ";
print "@bases\n\n";







my @bases = ('A','C', 'G', 'T');
my @reverse = reverse @bases;
print "Here's the array in reverse: ";
print "@reverse\n\n";

my @bases = ('A','C', 'G', 'T');
print "Here's the length of the array: ";
print scalar @bases, "\n";

splice ( @bases, 2, 0, 'X' );
print "Here's the array with an element inserted after the 2nd element: ";
print "@bases\n";
