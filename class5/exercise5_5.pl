#!/usr/bin/perl -w
print "please enter the filename: ";
$filename = <STDIN>;
chomp $filename;
unless ( open (PROTEIN, $filename) ) {
     print " cannot open file: \"$filename\"\n\n";
     exit;
    }
@protein = <PROTEIN>;
close PROTEIN;
$protein = join ('',@protein);
$protein =~ s/\s//g;
for ( $position = 0; $position < length $protein; ++$position ) {
       $base = substr ( $protein , $position, 1);
       if ( $base =~ /[AFILPVWY]/) {
           ++$count;
        }
    }
$y = $count/length $protein;
print $y;
