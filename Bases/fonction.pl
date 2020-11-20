#!/usr/bin/perl
use strict;
use warnings;

sub maJolieFonction {
    my ($x,$y,$t) = @_;
    print( "$x $y $t \n");
    my $z = 1;
    return $z;
}
maJolieFonction(4,5,12);


my $a = 3;
my $b = 8;
my $c = 12;
sub fonct {
   my $a = 5;
   print "$a\n";     # affiche 5
   print "$b\n";     # affiche 8
   $c = 15;          # modification de la variable globale
   print "$c\n";     # affiche 15
}
fonct();
print "$a\n";        # affiche 3
print "$b\n";        # affiche 8
print "$c\n";        # affiche 15




my $t = "Bonjour Larry";    # variable globale
print "$t\n";               # avec ou sans parenthèses
sub f {
    my ($x,$z) = @_;        # deux arguments attendus
    my $m = $x*$z;
    printf("%d\n", $m);
    return ($x+$z,$m);      # retourne une liste
}
my @t = f(3,5);
print "$t $t[0] $t[1]\n";



sub Fact {
   my ($n) = @_;
   return 1
      if( $n == 1 || $n == 0 );
   return $n * Fact($n-1);
}
print Fact(5)."\n";  # affiche 120


