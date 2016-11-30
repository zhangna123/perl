#!/usr/bin/perl  -w
#5.2
$DNA1 = 'AAAA';
$DNA2 = 'TTTT';
$DNA1 .= $DNA2;
$l = length $DNA2;
print $DNA1,"\n";
print " "x$l, $DNA2,"\n";


#5.3
for ($i = 0 ; $i <= 100; ++$i)  {
    print "$i\t";
    }



#5.4
print "please enter your DNA string:  ";
$str = <STDIN>;
chomp $str;
     $count_of_A = 0;
     $count_of_C = 0;
     $count_of_G = 0;
     $count_of_T = 0;
     $errors = 0;
     $base = '';
for ( $position = (length $str) -1; $position >=0 ; $position = $position - 1 ) {
    $base = substr ( $str, $position,1);
    if ( $base eq 'A' ) {
       ++$count_of_T;
     }
    elsif ( $base eq 'C' ) {
       ++$count_of_G;
     }
    elsif ( $base eq 'G' ) {
       ++$count_of_C;
     }
    elsif ( $base eq 'T' ) {
       ++$count_of_A;
     }
    else {
      print "I cannot recognize this base : $base\n";
      ++$errors;
  }
}
print "this is the string : ";
print "A:", $count_of_A,"\n","C:",$count_of_C,"\n","G:",$count_of_G,"\n","T:",$count_of_T,"\n","error:",$errors,"\n";





    


