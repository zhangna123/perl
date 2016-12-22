#!/usr/bin/perl -w
use strict;
use warnings;
print "please enter your target :\n";
my $target = <STDIN>;
chomp $target;
$target =~ s/\s*//g;
my @array = ('001:avgtt','002:actt','003:aaaaaa','004:tttttttt');
for (my $i = 0 ;$i < scalar @array; $i++){
   if ($array[$i] =~ /$target/)  {print $array[$i] ;}
   else {next;}
}
exit; 

