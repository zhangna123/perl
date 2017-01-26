#!/usr/bin/perl -w
use strict;
use warnings;
use LWP::UserAgent;
use Carp;
use HTTP::Response;
use constant PROXY => 'http://192.168.43.233';
my ($stock) = $ARGV[0];
getstock($stock);
exit;

sub getstock {
my ($stock) = @_;
my $ua = LWP::UserAgent->new();
my $response = $ua -> get("http://money.finance.sina.com.cn/corp/go.perl/vMS_MarketHistory/stockid/$stock.phtml");
if($response -> is_success){
print $response -> content;
}
else {
print STDERR $response -> status_line,"\n";
}
}
