#!/usr/bin/perl -w
print "please enter your first DNA: ";
$DNA1 = <STDIN>;
chomp $DNA1;
$DNA1 =~ tr/acgt/ACGT/;
@DNA1 = split ( '',$DNA1 );
print "please enter the first DNA position: ";
$x = <STDIN>;
print "please enter the second DNA position: ";
$y = <STDIN>;
$base1 = substr ($DNA1, $x, 1);
$base2 = substr ($DNA1, $y, 1);
splice ( @DNA1, $x,1, $base2);
splice ( @DNA1, $y,1, $base1);
print "@DNA1\n";
exit;



