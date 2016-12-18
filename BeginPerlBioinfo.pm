
sub dna2peptide {
  my($dna) = @_;
  use strict;
  use warnings;
  use BeginPerlBioinfo;     # see Chapter 6 about this module
  # Initialize variables
  my $protein = '';
  # Translate each three-base codon to an amino acid, and append to a protein 
  for(my $i=0; $i < (length($dna) - 2) ; $i += 3) {
    $protein .= codon2aa( substr($dna,$i,3));
  }
  return $protein;
}



















1
