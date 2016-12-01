#!/usr/bin/perl -w
$fh_out = 'file';
open $FH_OUT,'>', $fh_out or die "$0:failed to open output file '$fh_out': $!\n";
print "please enter your content: ";
$x = <STDIN>;
select $FH_OUT;
print $x;
close $FH_OUT or warn "$0:failed\n";
if (-e "file" ) {print STDOUT "succeed !!";}
unlink "file";
exit;

