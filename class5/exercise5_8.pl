#!/usr/bin/perl -w 
print "please type the filename of the protein aequence data: ";
$file = <STDIN>;
chomp $file;
unless ( open( PROTEINFILE, $file ) ) {
      print "Cannot open file \"$file\"\n\n";
      exit;
}
@protein = <PROTEINFILE>;
close PROTEINFILE;
$protein = join( '', @protein );
$protein =~ s/\s//g;
do {
    print "Enter a motif to search for: ";
    $motif = <STDIN>;
    chomp $motif;
    if ( $protein =~ /$motif/ )  {
    print "I found it!\n\n";
    print $&;
       }
    else {
     print "I chouldn\'t find it.\n\n";
       }
}  until ($motif =~ /^\s*$/ );
exit;
