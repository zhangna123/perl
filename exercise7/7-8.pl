#!/usr/bin/perl -w
use strict;
use warnings;
use Benchmark qw(timethese cmpthese);
#my $sequence = "abcdefghijklmnopq";
#cmpthese (-1, {
#    a => sub {study $sequence =~ /.*j/},
#    b => sub { $sequence =~ /.*j/},
#} );
my $x=3;
my $r = timethese(0,{
 a=>sub{$x*$x},
 b=>sub{$x**2},
});
cmpthese $r;
exit;

