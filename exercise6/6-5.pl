#!/usr/bin/perl -w
use strict;
print "please enter your filename: \n";
my $file = <STDIN>;
chomp $file;
my $result =  filetest ($file);
sub filetest  {
    my ($file) = @_;
    my $result = '';
    if (! -e $file ) {
      print "I cannot find your file! \n";
      }
     elsif (! -f $file ) {
       print "your file is not a normal file! \n";
        }
      elsif ( -z $file ) {
        print "your file have nothing!\n";
        }
      else {  $result = "YES";}
     return $result;
    }
print "answer: \n";
print "$result\n";
exit; 
