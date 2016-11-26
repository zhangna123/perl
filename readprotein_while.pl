#!/usr/bin/perl -w
use strict;
my $file =  'NM_021964fragment.pep';
unless ( open( PROTEINFILE, $file ) )  {
       print "Could not open file $file!\n";
       exit;
}
while ( my $protein = <PROTEINFILE> )  {
      print "   ######  Here is the next line of the file:\n";
      print $protein;
}
close PROTEINFILE;
exit;
