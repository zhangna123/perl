#!/usr/bin/perl -w
use strict;
use warnings;
my @file = get_file_data("sample.dna");
print "@file";
exit;
sub get_file_data {
  my($filename) = @_;
  use strict;
  use warnings;
  my @filedata = ( );
  unless( open(GET_FILE_DATA, $filename) ) {
    print STDERR "Cannot open file \"$filename\"\n\n";
    exit;
  }
 @filedata = <GET_FILE_DATA>;
  close GET_FILE_DATA;
  return @filedata;
}

