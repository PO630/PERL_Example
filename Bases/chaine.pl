#!/usr/bin/perl
use strict;
use warnings;

my @t = (3,5);   # déclaration et initialisation
$t[1] = 4;       # affectation d'un élément
print "$t[0]\n"; # affichage d'un élément


foreach my $v (@t) {
   print "v = $v\n";
}

my @tt = (1,2,3,4);
unshift(@t,5,6);
my @ttt = (@tt,5,6);
print( @tt , " " , @ttt , "\n" );

