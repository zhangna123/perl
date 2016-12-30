#!/usr/bin/perl -w
use strict;
use warnings;
use BeginPerlBioinfo;
my $file = "sample.dna";
unless ( open( DNA, $file ) ) {
      print "Cannot open file \"$file\"\n\n";
      exit;
}
my @DNA = <DNA>;
close DNA;
my $DNA = join( '', @DNA );
$DNA =~ s/\s//g;
my $motif = '';
do {
    print "Enter a motif to search for: ";
     $motif = <STDIN>;
    chomp $motif;
    if ( $DNA =~ /$motif/ )  {
    print "I found it!\n\n";
       }
    else {
     print "I chouldn\'t find it.\n\n";
       }
my @locations = match_positions( $motif, $DNA );

if (@locations) {

            print "the positions for $motif at dna:\n";

            print join( " ", @locations ), "\n";

        }

        else {

            print "The motif $motif is not in the DNA:\n";

        }
}  until ($motif =~ /^\s*$/ );


exit;
  
