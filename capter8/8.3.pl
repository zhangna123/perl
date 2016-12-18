#!/usr/bin/perl -w
use strict;
use warnings;
use BeginPerlBioinfo;   
my @file_data = (  );
my $dna = '';
my $protein = '';
@file_data = get_file_data("sample.dna");
$dna = extract_sequence_from_fasta_data(@file_data);
$protein = dna2peptide($dna);
print_sequence($protein, 25);
exit;
