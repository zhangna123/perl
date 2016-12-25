sub codon2aa {
  my($codon) = @_;
  $codon = uc $codon;
  my(%genetic_code) = (
	    
  'TCA' => 'S',    # Serine
  'TCC' => 'S',    # Serine
  'TCG' => 'S',    # Serine
  'TCT' => 'S',    # Serine
  'TTC' => 'F',    # Phenylalanine
  'TTT' => 'F',    # Phenylalanine
  'TTA' => 'L',    # Leucine
  'TTG' => 'L',    # Leucine
  'TAC' => 'Y',    # Tyrosine
  'TAT' => 'Y',    # Tyrosine
  'TAA' => '_',    # Stop
  'TAG' => '_',    # Stop
 'TGC' => 'C',    # Cysteine
  'TGT' => 'C',    # Cysteine
  'TGA' => '_',    # Stop
  'TGG' => 'W',    # Tryptophan
  'CTA' => 'L',    # Leucine
  'CTC' => 'L',    # Leucine
  'CTG' => 'L',    # Leucine
  'CTT' => 'L',    # Leucine
  'CCA' => 'P',    # Proline
  'CCC' => 'P',    # Proline
  'CCG' => 'P',    # Proline
  'CCT' => 'P',    # Proline
  'CAC' => 'H',    # Histidine
  'CAT' => 'H',    # Histidine
  'CAA' => 'Q',    # Glutamine
  'CAG' => 'Q',    # Glutamine
  'CGA' => 'R',    # Arginine
  'CGC' => 'R',    # Arginine
  'CGG' => 'R',    # Arginine
  'CGT' => 'R',    # Arginine
  'ATA' => 'I',    # Isoleucine
  'ATC' => 'I',    # Isoleucine
  'ATT' => 'I',    # Isoleucine
  'ATG' => 'M',    # Methionine
  'ACA' => 'T',    # Threonine
  'ACC' => 'T',    # Threonine
  'ACG' => 'T',    # Threonine
  'ACT' => 'T',    # Threonine
  'AAC' => 'N',    # Asparagine
  'AAT' => 'N',    # Asparagine
  'AAA' => 'K',    # Lysine
  'AAG' => 'K',    # Lysine
  'AGC' => 'S',    # Serine
  'AGT' => 'S',    # Serine
  'AGA' => 'R',    # Arginine
  'AGG' => 'R',    # Arginine
  'GTA' => 'V',    # Valine
  'GTC' => 'V',    # Valine
  'GTG' => 'V',    # Valine
  'GTT' => 'V',    # Valine
  'GCA' => 'A',    # Alanine
  'GCC' => 'A',    # Alanine
  'GCG' => 'A',    # Alanine
  'GCT' => 'A',    # Alanine
  'GAC' => 'D',    # Aspartic Acid
  'GAT' => 'D',    # Aspartic Acid
  'GAA' => 'E',    # Glutamic Acid
  'GAG' => 'E',    # Glutamic Acid
  'GGA' => 'G',    # Glycine
  'GGC' => 'G',    # Glycine
  'GGG' => 'G',    # Glycine
  'GGT' => 'G',    # Glycine
  );
  if(exists $genetic_code{$codon}) {
    return $genetic_code{$codon};
  }else{
    print STDERR "Bad codon \"$codon\"!!\n";
    exit;
  }
}



sub dna2peptide {
  my ($dna) = @_;
  use strict;
  use warnings;
  use BeginPerlBioinfo;    
  my $protein = ''; 
  for(my $i=0; $i < (length($dna) - 2) ; $i += 3) {
    $protein .= codon2aa( substr($dna,$i,3));
  }
  return $protein;
}


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


sub extract_sequence_from_fasta_data {
  my(@fasta_file_data) = @_;
  use strict; 
 use warnings;
  my $sequence = ''; # Declare and initialize variables
  foreach my $line (@fasta_file_data) {
    # discard blank line
    if ($line =~ /^\s*$/) { next;
    # discard comment line 
    } elsif($line =~ /^\s*#/) { next;
    # discard fasta header line
    } elsif($line =~ /^>/) { next;
    # keep line, add to sequence string
    } else { $sequence .= $line; }
  }
  # remove non-sequence data (in this case, whitespace) from $sequence string
  $sequence =~ s/\s//g;
  return $sequence;
}


sub print_sequence {
  my($sequence, $length) = @_;
  use strict;
  use warnings;
  # Print sequence in lines of $length
  for ( my $pos = 0 ; $pos < length($sequence) ; $pos += $length ) {
    print substr($sequence, $pos, $length), "\n";
  }
}



sub revcom {
  my($dna) = @_;
  # First reverse the sequence
  my($revcom) = reverse($dna);
  # Next, complement the sequence, dealing with upper and lower case
  # A->T, T->A, C->G, G->C
  $revcom =~ tr/ACGTacgt/TGCAtgca/;
  return $revcom;
}


sub translate_frame {
  my($seq, $start, $end) = @_;
  #my $protein;
  # To make the subroutine easier to use, you won't need to specify the end point--it will just go to the end of the sequence by default.
  unless($end) {
    $end = length($seq);
  }
  # Finally, calculate and return the translation
  return dna2peptide ( substr ( $seq, $start - 1, $end -$start + 1 ) );
}


sub IUB_to_regexp {
    my ($iub) = @_;
    my $regular_expression = '';
    my %iub2character_class = (
        A => 'A',
        C => 'C',
        G => 'G',
        T => 'T',
        R => '[GA]',
        Y => '[CT]',
        M => '[AC]',
        K => '[GT]',
        S => '[GC]',
        W => '[AT]',
        B => '[CGT]',
        D => '[AGT]',
        H => '[ACT]',
        V => '[ACG]',
        N => '[ACGT]',
    );
    $iub =~ s/\^//g;
    for ( my $i = 0 ; $i < length($iub) ; ++$i ) {
        $regular_expression .= $iub2character_class{ substr( $iub, $i, 1 ) };
    }
    return $regular_expression;
}


sub parseREBASE {
    my ($rebasefile) = @_;
    use strict;
    use warnings;
    use BeginPerlBioinfo;   
   my @rebasefile  = ();
    my %rebase_hash = ();
    my $name;
    my $site;
    my $regexp;
    my $rebase_filehandle = open_file($rebasefile);
    while (<$rebase_filehandle>) {
        ( 1 .. /Rich Roberts/ ) and next;
      /^\s*$/ and next;
       my @fields = split( " ", $_ );
        $name = shift @fields;
        $site = pop @fields;
        $regexp = IUB_to_regexp($site);
        $rebase_hash{$name} = "$site $regexp";
    }
  return %rebase_hash;
}
















1;
