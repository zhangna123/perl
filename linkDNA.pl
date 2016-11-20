#!/usr/bin/perl -w
$DNA1 = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
$DNA2 = 'ATAGTGCCGTGAGAGTGATGTAGTA';
print "Here are the original two DNA fragment:\n\n";
print $DNA1, "\n";
print $DNA2, "\n\n";
$DNA3 = "$DNA1$DNA2";
print "Here is the concatenation of the first two fragments (version 1):\n\n";
print "$DNA3\n\n";
$DNA3 = $DNA1 . $DNA2;
print "Here is the concatenation of the first two fragments (version 2):\n\n";
print "$DNA3\n\n";
print "Here is the concatenation of the first two fragments (version 3):\n\n";
print $DNA1, $DNA2, "\n";
$number = 17;
print $number, "\n";
exit;

