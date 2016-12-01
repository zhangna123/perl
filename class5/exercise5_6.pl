#!/usr/bin/perl -w
print "please enter your first DNA: ";
$DNA1 = <STDIN>;
chomp $DNA1;
print "please enter your second DNA: ";
$DNA2 = <STDIN>;
chomp $DNA2;
$DNA1 =~ tr/ACGTacgt/TGCATGCA/;
$DNA2 =~ tr/acgt/ACGT/;
@DNA1 = split ( '',$DNA1 );
@DNA2 = split ( '',$DNA2 );
for ( $position = 0; $position < length $DNA1; ++$position)
   {
    $x = pop @DNA1;
    $y = shift @DNA2;
    if ( $x eq $y ) { next;}
    else {
      print "they are not recom!\n";
      exit;
   } 
   }
print "they are recom!\n.";
exit;
