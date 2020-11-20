#!/usr/bin/perl
use strict;
use warnings;

my %h = ( "Paul"     => "01.23.45.67.89",
          "Virginie" => "06.06.06.06.06",
          "Pierre"   => "heu ..." );


foreach my $v (values(%h)) {
   print "Valeur=$v\n";
}
print("\n");
foreach my $k (keys(%h)) {
   print "Clef=$k Valeur=$h{$k}\n";
}

print("\n");
my @texte = qw( bonjour vous bonjour );
my %comptage = ();
foreach my $mot ( @texte ) {
   $comptage{$mot}++;
}
while( my ($k,$v) = each(%comptage) ) {
   print "Le mot '$k' est présent $v fois\n";
}


