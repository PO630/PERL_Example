#!/usr/bin/perl
use strict;
use warnings;


my $filename = "data2.txt" ;

open(my $fd,"<",$filename) or die"open: $!";
my($line,@words,$word,%total);
while( defined( $line = <$fd> ) ) {
   @words = split( /\W+/, $line );
   foreach $word (@words) {
      $word =~ tr/A-Z/a-z/;
      $total{$word}++;
   }
}
close($fd);

foreach $word (sort keys %total) {
   print "$word a été rencontré $total{$word} fois.\n";
}