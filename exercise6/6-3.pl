#!/usr/bin/perl -w
use strict;
my $warn = "who are you?\n";
my $answer = signal($warn);
sub signal {
   my ($warn) = @_;
   print $warn;
   my $answer = <STDIN>;
   return $answer;
 }
print "this is your answer: \n";
print $answer;
exit;

   
   
    
