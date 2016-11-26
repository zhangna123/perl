#!/usr/bin/perl -w
use strict;
print "Please type the filename of the DNA sequence data: ";
my $dna_file = <STDIN>;
chomp $dna_file;
unless ( -e $dna_file )  {
     print "File \"$dna_file\" doesn\'t seen to exist!!\n";
     exit;
}
unless ( open( DNAFILE, $dna_file ) ) {
     print "Cannot open file \"$dna_file\"\n\n";
     exit;
}
my @DNA = <DNAFILE>;
close DNAFILE;
my $DNA = join( '', @DNA );
$DNA =~ s/\s//g;
my $count_of_A = 0;
my $count_of_C = 0;
my $count_of_G = 0;
my $count_of_T = 0;
my $errors     = 0;
for ( my $position = 0 ; $position < length $DNA ; ++$position )  {
    my  $base = substr( $DNA, $position, 1 );
    if ( $base eq 'A')  {
         ++$count_of_A;
     }
    elsif ( $base eq 'C') {
         ++$count_of_C;
     }
    elsif ( $base eq 'G') {
         ++$count_of_G;
     }
    elsif ( $base eq 'T') {
         ++$count_of_T;
     }
    else {
       print "!!!!!!!! Errors - I don\'t recognize this base: $base\n";
       ++$errors;
     }
}

print "A = $count_of_A\n";
print "C = $count_of_C\n";
print "G = $count_of_G\n";
print "T = $count_of_T\n";
print "errors = $errors\n";
exit;
