#!/usr/bin/perl -w
$protein = 'NM_021964fragment.pep';
open $PROTEINFILE, '<', $protein  or die "$0: failed to open input file '$protein':  $!\n";
@protein = <$PROTEINFILE>;
close $PROTEINFILE or warn "$0: failed to close input file 'protein': $!\n";
print @protein;
exit;

