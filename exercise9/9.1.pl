#!/usr/bin/perl -w
use strict;
use warnings;
use BeginPerlBioinfo;    

my %rebase_hash      = ();

my @file_data        = ();

my $query            = '';

my $dna              = '';

my $recognition_site = '';

my $regexp           = '';

my @locations        = ();
my $filename         = '';


if (!@ARGV) {
  print "Please enter your filename:\n";
  $filename = <STDIN>;
  chomp $filename;
  @file_data = get_file_data("$filename");

}
else {@file_data = @ARGV;}

$dna = extract_sequence_from_fasta_data(@file_data);



%rebase_hash = parseREBASE('bionet');



do {

    print "Search for what restriction site for (or quit)?: ";

    $query = <STDIN>;

    chomp $query;

    # Exit if empty query

    if ( $query =~ /^\s*$/ ) {

        exit;

    }



    if ( exists $rebase_hash{$query} ) {

        ( $recognition_site, $regexp ) = split( " ", $rebase_hash{$query} );

        # Create the restriction map

        @locations = match_positions( $regexp, $dna );



        if (@locations) {

            print "Searching for $query $recognition_site $regexp\n";

            print "A restriction site for $query at locations:\n";

            print join( " ", @locations ), "\n";

        }

        else {

            print "A restriction enzyme $query is not in the DNA:\n";

        }

    }

    print "\n";

} until ( $query =~ /quit/ );

exit;
