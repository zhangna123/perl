#!/usr/bin/perl -w
use strict;
my $count;
my $input;
my $sentence;
my $story;
my @nouns = (
      'Dad',  'TV',  'Mom',  'Groucho',  'Rebecca',  'Harpo',  'Robin Hood', 'Joe and Moe',
     );
my @verbs = (
      'ran to',  'giggled with',  'put hot sauce into the orange juice of',  'exploded',  'dissolved',   'sang stupid songs with',  'jumped with',
);
my @prepositions = (
     'at the store',
     'over the rainbow',
     'just for the fun of it',
     'at the beach',
     'before the dinner',
     'in New York City',
     'in a dream',
     'around the world',
);
srand( time | $$ );
do {
  for ($count = 0; $count < 6; $count++)  {
     $sentence =
         $nouns[ int( rand( scalar @nouns ) )] . " "
        .$verbs[ int( rand( scalar @verbs ) )] . " " 
        .$nouns[ int( rand( scalar @nouns ) )] . " "
        .$prepositions[ int( rand( scalar @prepositions ) )] . '. ';
     $story .= $sentence;
 }
print "\n", $story, "\n";
print "\nType \"quit\" to quit, or press Enter to continue: ";
$input = <STDIN>;
} until ( $input =~ /^\s*q/i );
exit;









