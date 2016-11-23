#!/usr/bin/perl -w
@bases = ( 'A', 'C', 'G', 'T' );
print "@bases\n";
$a = @bases;
print $a, "\n";
($a) = @bases;
print $a, "\n";
exit;

