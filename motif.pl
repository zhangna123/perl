#!/usr/bin/perl -w
use strict;
print "Please type the filename of the protein aequence data: ";
my $file = <STDIN>;
chomp $file;
unless ( open( PROTEINFILE, $file ) ) {
      print "Cannot open file \"$file\"\n\n";
      exit;
}
my @protein = <PROTEINFILE>;
close PROTEINFILE;
my $protein = join( ' ', @protein );
$protein =~ s/\s//g;
do {
    print "Enter a motif to search for: ";
    my $motif = <STDIN>;
    chomp $motif;
    if ( $protein =~ /$motif/ )  {
    print "I found it!\n\n";
       }
    else {
     print "I chouldn\'t find it.\n\n";
       }
}  until (my $motif =~ /^\s*$/ );
exit;
   


