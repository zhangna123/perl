#!/usr/bin/perl -w
my $dna = 'CGACGTCTTCTAAGGCGA';
my @dna;
my $receivingcommittment;
my $previousbase = '';
my $subsequence = '';
if (@ARGV) {
   my $subsequence = $ARGV[0];
}
else {
   $subsequence = 'TA';
}
my $base1 = substr($subsequence, 0, 1);
my $base2 = substr($subsequence, 1, 1);
@dna = split ( '', $dna );
foreach (@dna) {
  if ($receivingcommittment) {
        print;
        exit;
   }
  elsif ( $previousbase eq $base1 ) {
       if (/$base2/)  {
           print $base1,$base2;
           $receivingcommittment = 1;
         }
   }
  $previousbase = $_;
}
print "\n";
exit;
