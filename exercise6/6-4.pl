#!/usr/bin/perl -w
use strict;
my $help = "$0 :DNA\n\n";
my $man = "$0 :this is a mannul.\n\n";
if ($ARGV[0] eq '-h'  || $ARGV[0] eq '-help')  {
     print $help;
   }
elsif ($ARGV[0] eq '-m'  || $ARGV[0] eq '-man')  {
     print $man;
   }
exit;
