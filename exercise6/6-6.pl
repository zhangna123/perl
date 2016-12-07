#!/usr/bin/perl -w
use strict;
my $a = 0;
my $answer = '';
do {
my $warn = "who are you?\n";
 $answer = signal($warn);
sub signal {
   my ($warn) = @_;
   print $warn;
   my $answer = <STDIN>;
   chomp $answer;
   return $answer;
 }
print "this is your answer: \n";
print "$answer\n";
$a += 1;
}
until ( -e $answer && !(-z $answer) || $a >= 5); 
exit;


