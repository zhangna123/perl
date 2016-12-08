#!/usr/bin/perl -w
use strict;
print "please enter the filename: ";
my $filename = <STDIN>;
chomp $filename;
unless ( open (DNA, $filename) ) {
     print " cannot open file: \"$filename\"\n\n";
     exit;
    }
my @dna = <DNA>;
close DNA;
my $result = '';
$result = mo(\@dna);
exit;

sub mo {
my ($dna) = @_;
print "this is your text :\n @$dna\n";
my $dna1 = join ('', @$dna);
$dna1 =~ s/\s//g;
print "please enter your target:";
my $target = <STDIN>;
chomp $target;
print "please enter your new string:";
my $newstring = <STDIN>;
chomp $newstring;
$dna1 =~ s/$target/$newstring/g;
my $fh_out = $filename;
open my $FH_OUT,'>', $fh_out or die "$0:failed to open output file '$fh_out': $!\n";
select $FH_OUT;
print "$dna1\n";
close $FH_OUT or warn "$0:failed\n";
return $dna1;
}


