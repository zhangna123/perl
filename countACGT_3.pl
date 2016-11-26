#!/usr/bin/perl -w
use strict;
print "Please type the filename of the DNA sequence data: ";
my $dna_file = <STDIN>;
chomp $dna_file;
unless ( -e $dna_file ) {
     print "File \"$dna_file\" doesn\'t seem to exist!!\n";
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
my $a = 0;
my $c = 0;
my $g = 0;
my $t = 0;
my $e = 0;
while ( $DNA =~ /a/ig )  { $a++ }
while ( $DNA =~ /c/ig )  { $c++ }
while ( $DNA =~ /g/ig )  { $g++ }
while ( $DNA =~ /t/ig )  { $t++ }
while ( $DNA =~ /[^acgt]/ig )  { $e++ }
print "A=$a C=$c G=$g T=$t error=$e\n";
my $outputfile = "countbase";
unless ( open( COUNTBASE, ">$outputfile" ) ) {
    print "Cannot open file \"$outputfile\" to write to !!\n\n";
    exit;
}
print COUNTBASE "A=$a C=$c G=$g T=$t error=$e\n";
close(COUNTBASE);
exit;












