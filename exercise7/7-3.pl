#!/usr/bin/perl -w
use strict;
use warnings;
print "please enter your string:\n";
my $string = <STDIN>;
chomp $string;
my @random = randomstring($string);
print "this is the random string:\n";
print "@random";
exit;
sub randomstring {
my ($string) = @_;
my @string = split('',$string);
my @newstring;
for (my $position = 0; $position < length $string; ++$position ) {
   my $po = rand @string;  
   my $base = $string[$po];
   push (@newstring, $base);
   splice(@string, $po, 1);
}
return @newstring;

}
