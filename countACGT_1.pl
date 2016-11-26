#!/usr/bin/perl -w
use strict;
print "Please type the filename of the DNA aequence data: ";
my $dna_file = <STDIN>;
chomp $dna_file;
unless ( open( DNAFILE, $dna_file ) )  {
      print "Cannot open file \"$dna_file\"\n\n";
      exit;
}
my @DNA = <DNAFILE>;
close DNAFILE;
my $DNA = join( '',@DNA);
$DNA =~ s/\s//g;
@DNA = split( '', $DNA );
 my $count_of_A = 0;
 my $count_of_C = 0;
 my $count_of_G = 0;
 my $count_of_T = 0; 
 my $errors     = 0;
foreach my $base (@DNA)  {
     if ( $base eq 'A' ) {
         ++$count_of_A;
     }
     elsif ( $base eq 'C' ) {
         ++$count_of_C;
     }
     elsif ( $base eq 'G' ) {
         ++$count_of_G;
     }
     elsif ( $base eq 'T' ) {
         ++$count_of_T;
     }
     else {
        print "!!!!!!!! Error - I don\'t recognize this base: $base\n";
        ++$errors;
      }
}
print "A = $count_of_A\n";
print "C = $count_of_C\n";
print "G = $count_of_G\n";
print "T = $count_of_T\n";
print "errors = $errors\n";
exit;











