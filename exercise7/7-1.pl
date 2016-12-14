#!/usr/bin/perl -w
use strict;
use warnings;
print "please chooce an anminoacid from :\n G A V I L F P M W C S T N Q Y H D E K R\n";
my $anmino = <STDIN>;
print "I guess your aminoacid is \n";
print randomaminoacid(),"\n";
exit;
sub randomaminoacid {
   my(@aminoacids) = ('G', 'A', 'V', 'I', 'L', 'F', 'P', 'M', 'W', 'C', 'S', 'T', 'N', 'Q', 'Y', 'H', 'D', 'E', 'K', 'R');
   return $aminoacids[rand @aminoacids];
 }


